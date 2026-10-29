# Hyprland-style dwindle auto-tiling: `winarchy autotile on|off|toggle|status` toggles
# lib/autotile-watch.ps1, a background watcher started/stopped by GlazeWM itself (like
# Zebar) that keeps each tiling container's split direction matched to its own shape.
# GlazeWM has no built-in equivalent (glzr-io/glazewm#1175, #1281 are open feature
# requests) -- see lib/autotile-watch.ps1 for the algorithm and its known limits.

function Set-AutoTile([bool]$on) {
    Set-ConfigValue 'autoTiling.enabled' $on
}

function Invoke-AutoTile([string]$action) {
    switch ($action) {
        'on' { Set-AutoTile $true; Use-Lock { Invoke-Apply } }
        'off' { Set-AutoTile $false; Use-Lock { Invoke-Apply } }
        'toggle' { Invoke-AutoTile $(if ((Get-Config).autoTiling.enabled) { 'off' } else { 'on' }) }
        default {
            $enabled = (Get-Config).autoTiling.enabled
            "auto-tiling:     $(if ($enabled) { 'on' } else { 'off' })"
            $running = Get-CimInstance Win32_Process -Filter "Name='pwsh.exe'" -ErrorAction SilentlyContinue |
                Where-Object { $_.CommandLine -like '*autotile-watch.ps1*' }
            "watcher running: $(if ($running) { "pid $($running[0].ProcessId)" } else { 'not running' })"
        }
    }
}

# Workspaces left on the wrong split direction (lib/autotile-watch.ps1 flips them back).
# GlazeWM flattens H[V[win]] into V[win] when the window beside a dwindle split closes
# (flatten_child_split_containers), so the workspace takes the split's direction and the
# next window stacks underneath instead of beside. A workspace holding one window or none
# should split along its monitor's long side, as a fresh one does. $monitors is
# `query monitors`' .data.monitors; returns workspace ids.
function Get-DirectionFixes($monitors) {
    foreach ($mon in $monitors) {
        $want = if ([int]$mon.width -ge [int]$mon.height) { 'horizontal' } else { 'vertical' }
        foreach ($ws in $mon.children) {
            if ($ws.type -ne 'workspace' -or $ws.tilingDirection -eq $want) { continue }
            $tiling = @($ws.children | Where-Object { $_.type -eq 'split' -or ($_.type -eq 'window' -and $_.state.type -eq 'tiling') })
            if ($tiling.Count -gt 1 -or ($tiling.Count -eq 1 -and $tiling[0].type -eq 'split')) { continue }
            $ws.id
        }
    }
}

# A new window GlazeWM started as fullscreen only because its saved size covers the whole
# screen (no taskbar here, so Chrome, Explorer and co. reopen that big): it would sit
# behind the bar. Real fullscreen (Chrome F11, video players, launchers' fullscreen modes)
# is borderless; an ordinary window keeps its resizing frame (WS_THICKFRAME).
function Test-TileFullSize($win, [long]$style) {
    $win.state.type -eq 'fullscreen' -and -not $win.state.maximized -and ($style -band 0x40000) -ne 0
}

# --- Stacked workspaces (config stackedWorkspaces) ---------------------------------------
# Windows stacked on top of each other, each filling the workspace, the way Windows itself
# keeps them: Alt+Tab (or a click) brings one to the front. GlazeWM has no monocle/stacked
# layout, so the watcher floats every window on such a workspace at the workspace's own
# rectangle - exactly where a lone tiled window sits, gaps and bar included.

# The workspace names from config, as strings (JSON may hold them as numbers).
function Get-StackedWorkspaces($cfg) {
    @($cfg.stackedWorkspaces) | Where-Object { "$_" } | ForEach-Object { "$_" }
}

function Test-FillsWorkspace($win, $ws) {
    $win.x -eq $ws.x -and $win.y -eq $ws.y -and $win.width -eq $ws.width -and $win.height -eq $ws.height
}

# Floating windows that already fill a stacked workspace: floated by an earlier watcher, so
# they are ours to tile again when they leave it. Asked once, when the watcher starts.
function Get-StackedOwned($workspaces, [string[]]$stacked) {
    foreach ($ws in $workspaces) {
        if ($stacked -notcontains "$($ws.name)") { continue }
        foreach ($win in Get-WorkspaceWindows $ws) {
            if ($win.state.type -eq 'floating' -and (Test-FillsWorkspace $win $ws)) { $win.id }
        }
    }
}

# Every window in a workspace's tree (splits hold the tiled ones).
function Get-WorkspaceWindows($ws) {
    foreach ($c in $ws.children) {
        if ($c.type -eq 'window') { $c } else { Get-WorkspaceWindows $c }
    }
}

# What to do to keep stacked workspaces stacked. $workspaces is `query workspaces`'
# .data.workspaces; $ours holds the ids of windows floated here before. Returns
#   @{ id; action = 'float'; x; y; width; height }  a tiled window on a stacked workspace,
#                                                    or one of ours that no longer fits it
#   @{ id; action = 'tile' }                         one of ours moved to a normal workspace
# Other floating windows (dialogs, Super+O) and fullscreen ones are left alone.
function Get-StackedFixes($workspaces, [string[]]$stacked, $ours) {
    foreach ($ws in $workspaces) {
        $isStacked = $stacked -contains "$($ws.name)"
        foreach ($win in Get-WorkspaceWindows $ws) {
            $fits = Test-FillsWorkspace $win $ws
            $mine = $win.state.type -eq 'floating' -and $ours.Contains($win.id)
            if ($isStacked -and ($win.state.type -eq 'tiling' -or ($mine -and -not $fits))) {
                @{ id = $win.id; action = 'float'; x = $ws.x; y = $ws.y; width = $ws.width; height = $ws.height }
            } elseif (-not $isStacked -and $mine) {
                @{ id = $win.id; action = 'tile' }
            }
        }
    }
}

# The extra `startup_commands` entry for GlazeWM's config (empty when off, so nothing is
# added to the list). $cli is the currently-selected GlazeWM CLI path (official install,
# or the animations-fork build -- see Get-SelectedGlazeWM in lib/animations.ps1), passed
# through so the watcher always talks to whichever GlazeWM is actually running.
function ConvertTo-AutoTileStartup($cfg, [string]$cli) {
    if (-not ($cfg.autoTiling.enabled -or @(Get-StackedWorkspaces $cfg).Count) -or -not $cli) { return '' }
    # A YAML single-quoted string: an apostrophe in a path (a user name like O'Brien) is ''.
    $script = (Join-Path $Code 'lib\autotile-watch.ps1') -replace "'", "''"
    $cli = $cli -replace "'", "''"
    # conhost --headless: started plainly, pwsh gets handed to the default terminal (Windows
    # Terminal), whose window -WindowStyle Hidden can't hide -- and the watcher never exits,
    # so it sat on screen showing "autotile: watching". Headless conhost makes no window at all.
    ", 'shell-exec conhost.exe --headless pwsh -NoProfile -NonInteractive -ExecutionPolicy Bypass -WindowStyle Hidden -File ""$script"" -Cli ""$cli""'"
}
