# Upstream

What changed in Omarchy since Winarchy last reviewed it, newest first. Written by the daily upstream workflow (lib/upstream.ps1); porting a change is a reviewed step (agents/skills/upstream-sync.md).

## 2026-10-27

580 new commit(s) on omacom/omarchy@quattro, [454b67d...18ecf39](https://github.com/omacom/omarchy/compare/454b67d95fd63c269c5315836a098038a0c61716...quattro).

Only the first 250 commits and 300 files fit in one comparison: follow the link for the rest.

**New Omarchy release: v4.0.6** (Winarchy tracked v4.0.4). Themes and backgrounds follow it; check its notes: https://github.com/omacom/omarchy/releases/tag/v4.0.6

| Area | Upstream files | Winarchy files to review |
|---|---|---|
| Other | `.github/workflows/i18n-check.yml`<br>`.github/workflows/i18n-sync.yml`<br>`.greptile/files.json`<br>`agents/skills/icon-font.md`<br>`agents/skills/install-scripts.md`<br>`agents/skills/migrations.md`<br>and 15 more | - |
| Conventions | `AGENTS.md` | `AGENTS.md`<br>`docs/` |
| CLI | `bin/omarchy` | `bin/winarchy.ps1`<br>`lib/cli.ps1` |
| Coding agents | `bin/omarchy-agent`<br>`bin/omarchy-default-agent` | `lib/agents.ps1` |
| Agent accounts | `bin/omarchy-agent-account-add`<br>`bin/omarchy-agent-account-copy`<br>`bin/omarchy-agent-account-exec`<br>`bin/omarchy-agent-account-home`<br>`bin/omarchy-agent-account-state`<br>`bin/omarchy-agent-account-transfer`<br>and 1 more | `lib/accounts.ps1` |
| Agent usage | `bin/omarchy-agent-usage-agy`<br>`bin/omarchy-agent-usage-claude`<br>`bin/omarchy-agent-usage-codex`<br>`bin/omarchy-agent-usage-copilot`<br>`bin/omarchy-agent-usage-cursor`<br>`bin/omarchy-agent-usage-deepseek`<br>and 18 more | `lib/agents/` |
| Other commands | `bin/omarchy-apply-hardware`<br>`bin/omarchy-apply-lock`<br>`bin/omarchy-apply-n1x-gpu-memory`<br>`bin/omarchy-apply-pacman`<br>`bin/omarchy-audio-input-mute`<br>`bin/omarchy-audio-input-set-default`<br>and 158 more | `lib/` |
| Launchers | `bin/omarchy-cmd-browser-handoff`<br>`bin/omarchy-cmd-default-browser`<br>`bin/omarchy-launch-about`<br>`bin/omarchy-launch-browser`<br>`bin/omarchy-launch-config-editor`<br>`bin/omarchy-launch-openclaw`<br>and 4 more | `ahk/launchers.ahk`<br>`ahk/menu.ahk` |
| Install / Remove | `bin/omarchy-install-ai-openclaw`<br>`bin/omarchy-install-ai-t3-code`<br>`bin/omarchy-install-browser`<br>`bin/omarchy-install-camera`<br>`bin/omarchy-install-dev-env`<br>`bin/omarchy-install-dictation-superwhisper`<br>and 30 more | `lib/catalog.ps1` |
| Menu | `bin/omarchy-menu`<br>`bin/omarchy-menu-herdr-keybindings`<br>`bin/omarchy-menu-keybindings`<br>`bin/omarchy-menu-plugin`<br>`bin/omarchy-menu-select`<br>`bin/omarchy-menu-share`<br>and 2 more | `zebar/omarchy/menu.json`<br>`zebar/omarchy/menu.js`<br>`ahk/menu.ahk` |
| Theming | `bin/omarchy-theme-bg-boot-intro`<br>`bin/omarchy-theme-bg-intro`<br>`bin/omarchy-theme-bg-next`<br>`bin/omarchy-theme-bg-set`<br>`bin/omarchy-theme-install`<br>`bin/omarchy-theme-refresh`<br>and 11 more | `lib/render.ps1`<br>`lib/themes.ps1`<br>`lib/targets.ps1` |
| Toggles | `bin/omarchy-toggle-animations`<br>`bin/omarchy-toggle-bar`<br>`bin/omarchy-toggle-crash-capture`<br>`bin/omarchy-toggle-hybrid-gpu`<br>`bin/omarchy-toggle-input-device`<br>`bin/omarchy-toggle-nightlight`<br>and 3 more | `ahk/winarchy.ahk`<br>`ahk/menu.ahk` |

Commits:

- [09ba618](https://github.com/omacom/omarchy/commit/09ba618379de1a21aedb17712c6223fadc9adeed) Defer only on a note, and stop waiting once a package changes
- [a2d720e](https://github.com/omacom/omarchy/commit/a2d720e9f3ccd266b286f4cbb7554a259053beae) Look again at a deferral that a later migration's package change made stale
- [2cc752c](https://github.com/omacom/omarchy/commit/2cc752c7c2114476d0af0c01f7c77d39f71b5935) Use the openclaw package as OpenClaw until it becomes the seed
- [5883425](https://github.com/omacom/omarchy/commit/58834251bedb68c0417bf1bc58b14652f06dd70f) Start a gateway again after a run that stopped it failed
- [b693064](https://github.com/omacom/omarchy/commit/b693064d3ac9936527454cd19c48afdb075a7c38) Keep the pre-seed package and the stopped-service record to their cases
- [47aef92](https://github.com/omacom/omarchy/commit/47aef9230ff21d8e275fb5238426172f5e8834e5) Move OpenClaw installed while waiting for the seed when the seed arrives
- [505d6f4](https://github.com/omacom/omarchy/commit/505d6f4f659dfafe87fd6f94293d68317ec8b21e) Reach whoever installs OpenClaw while waiting for the seed, however they install it
- [06f5660](https://github.com/omacom/omarchy/commit/06f5660bd987a003b243b8557058ca24c8556bb1) Let the agent key reach OpenClaw's launcher when only the package is there
- [fb18957](https://github.com/omacom/omarchy/commit/fb189573956b8dde01aefd6677f359589e441481) Keep a failed OpenClaw setup on screen in the agent's terminal
- [a38d9d1](https://github.com/omacom/omarchy/commit/a38d9d1d48600cb706d1d77b14130bcfe11c9c95) Stamp a deferral with the installed packages, and look again only on a change
- [3a6bbce](https://github.com/omacom/omarchy/commit/3a6bbce39393d1054ae4c75c8ff13e1e7b8409f9) Drop a stopped service's record once its unit is gone
- [0b8074c](https://github.com/omacom/omarchy/commit/0b8074ce72914ce118d107e8893bc2571966909f) Hold the package's own openclaw to the one-OpenClaw rule until the seed arrives
- [3bb2b6a](https://github.com/omacom/omarchy/commit/3bb2b6aed798c6a059c7c579da488680934517bc) Retire 1790397381 and move OpenClaw under a new migration
- [7be3cbb](https://github.com/omacom/omarchy/commit/7be3cbb95d0ccf38c1431634865530f9820502b3) Have a moved gateway answer, running doctor once if it does not
- [e3eea45](https://github.com/omacom/omarchy/commit/e3eea45eb231601cb0babd58e15bb2384d694ab2) Merge pull request #14212 from omacom/fix/openclaw-migration-update-path
- [f61be3f](https://github.com/omacom/omarchy/commit/f61be3fd40093e83af4f66f0b5bbc649adf427a9) Keep per-monitor workspaces on the right monitor after unplugs
- [357231b](https://github.com/omacom/omarchy/commit/357231b696981a63c0b9d056e06ae232d2bf4481) Check the reloaded module in the twin monitor test
- [2c1b5ea](https://github.com/omacom/omarchy/commit/2c1b5ea0648c180851c70e80de79331e547cfd2d) Revert migration-core changes from #14212 (#15864)
- [41344fd](https://github.com/omacom/omarchy/commit/41344fd18b03c63471e618d27579410788966c48) Merge pull request #15867 from omacom/monitor-workspaces-review-fixes
- [593a64e](https://github.com/omacom/omarchy/commit/593a64e37e310d96b1d7b7f16141beeed51c036b) Add roadster starlight background to ethereal
- [f6798dd](https://github.com/omacom/omarchy/commit/f6798dd2e06f04dbd49385de0b0a2e40aa14424a) Point Greptile reviews at AGENTS.md and the task guides (#15891)
- [2430f4f](https://github.com/omacom/omarchy/commit/2430f4feaed0790f0ff35f9334377c5d72db5efe) Let the console migration finish when the Limine config leaves the parameter out (#15852)
- [1d134a5](https://github.com/omacom/omarchy/commit/1d134a5261cb7764099aee8def09950fa518529a) Keep a non-Latin vconsole.conf out of the initramfs again (#14885)
- [60f5b49](https://github.com/omacom/omarchy/commit/60f5b4966624710d79d3afc7a31af84593a7fc7d) Let the OpenClaw move finish when an OpenClaw of the user's own is in the way (#15875)
- [73b14f9](https://github.com/omacom/omarchy/commit/73b14f9c322982c73a97becc152969b89a0759ea) Install T3 Code as its self-updating AppImage (#15907)
- [b5f8593](https://github.com/omacom/omarchy/commit/b5f8593dfc92b090b4cf0b8fcecd4b268485556d) Let Chromium use the Snapdragon laptops' cameras (#15895)
- [81fd2d2](https://github.com/omacom/omarchy/commit/81fd2d23ca6e3462183a4dc8360de3113fa8d80c) Find fingerprint readers a platform names (#14675)
- [aef8d09](https://github.com/omacom/omarchy/commit/aef8d09a294185e5e6af2576f6a3f70fc101c8cc) Keep the fingerprint setup test's check marks under the C locale
- [64685fa](https://github.com/omacom/omarchy/commit/64685fa2736d908445fce52441084a22d69b2e1a) Say lift and try again in one line when fprintd asks to lift the finger
- [3ba58c6](https://github.com/omacom/omarchy/commit/3ba58c625f7543b449a24c34eef5a60c8094c316) Give TUIs launched under their own app-id their terminal's touchpad scroll speed
- [f58c408](https://github.com/omacom/omarchy/commit/f58c408e30476fde76fbb13eb639bc1898d3a5f8) Let Elsewhen find real places, set here, and name the people in a city
- [096adaf](https://github.com/omacom/omarchy/commit/096adaf2c9a3b6139584ac4e9939098da0930cd1) Fetch people added to Elsewhen while another fetch is finishing
- [c8fb2b7](https://github.com/omacom/omarchy/commit/c8fb2b7806aab01d0576f5009ac7341483189e63) Move the clock when Elsewhen's here is on another zone
- [a3fa32f](https://github.com/omacom/omarchy/commit/a3fa32f7fcf54dd999536db43f0775bccfbda8d1) Harden Elsewhen's network reads and keep places, edits and weather straight
- [b904374](https://github.com/omacom/omarchy/commit/b904374db73cd33695690cfcca6033b2806f410e) Send Elsewhen's globe jump to the town that was picked
- [a91616c](https://github.com/omacom/omarchy/commit/a91616cbed90cfed1b4b3c175d89b6beb8441ca6) Install Node lazily through mise instead of during setup
- [02da3ad](https://github.com/omacom/omarchy/commit/02da3adab54846eb9fe605e95d2229f596708b54) Ship mise's upgrade pruning setting instead of writing the user's config
- [310fd8d](https://github.com/omacom/omarchy/commit/310fd8d8f62e3d375f5c5b3345ca9d1ce3e8c48a) Find the user's mise config where mise keeps it
- [06c0b7e](https://github.com/omacom/omarchy/commit/06c0b7edb29c7b1a7093a1f32a0553085783d120) Merge pull request #15876 from omacom/lazy-node
- [4039002](https://github.com/omacom/omarchy/commit/4039002da9c31560534272c0be75208a9eebc678) Merge pull request #16027 from omacom/elsewhen-places-and-people
- [4671ae2](https://github.com/omacom/omarchy/commit/4671ae2d38e6c0151a16da668ff97193724577cb) Replace the notification engine with Omapager's stacks, snoozes and panel
- [0c18e38](https://github.com/omacom/omarchy/commit/0c18e3807fb270212b44d961e2b34627d4675c5e) Add a notification demo for exercising the new engine
- [44261da](https://github.com/omacom/omarchy/commit/44261da979b605f7d061a8d5012f36e94a652439) Install Pillow and Bubblewrap and retire the Omapager plugin
- [9be81e1](https://github.com/omacom/omarchy/commit/9be81e1c6bc734946ea7b6ad243eaa2829f991ee) Decode notification images with ImageMagick instead of Pillow
- [06f401b](https://github.com/omacom/omarchy/commit/06f401bb0b17ff41967b234611d35ba88c187a0e) Keep recoloured notification glyphs anti-aliased
- [01d59ea](https://github.com/omacom/omarchy/commit/01d59ead79375956ab00ee52f9bb85bc4c90e3a4) Harden the notification image helpers against hostile input
- [4bc55dc](https://github.com/omacom/omarchy/commit/4bc55dcc6736c28b5baca39090dfe4a4f1dc8c84) Accept only cache PNGs and real PNG data from notification helpers
- [4c2ab42](https://github.com/omacom/omarchy/commit/4c2ab4286e7f4bb862b21518f25b7145066db3a0) Refuse sender images that resolve into /proc, /sys or /dev
- [bef3cba](https://github.com/omacom/omarchy/commit/bef3cba4226e869b0f20cd075028a66d2788028e) Publish notification icons from pixels outside the sandbox
- [96f0c19](https://github.com/omacom/omarchy/commit/96f0c1960cb88d9cc85985a81a2022f645a0054d) Bound sender-file reads and reap helpers on every failure
- [469494c](https://github.com/omacom/omarchy/commit/469494cc7adaa69a770c92a1b4a5954c003ab123) Seal the sender-image copy and tie its reader to the launcher
- [80c55b5](https://github.com/omacom/omarchy/commit/80c55b5a08274351a8aa38b0c4e23c99414ee3ed) Fetch site icons and decode them in separate sandboxes
- [21bee67](https://github.com/omacom/omarchy/commit/21bee67a4a5a5bcc83bb9b14f4e6f97f0f50fada) Tie notification sources to browsers and bound snoozes and click argv
- [40bc7ef](https://github.com/omacom/omarchy/commit/40bc7ef60c727eb06e38e6407c31de62862d38b0) Kill x32 syscalls, bind icon downloads to the source, and bound the whole icon job
- [654a77e](https://github.com/omacom/omarchy/commit/654a77e799b2a3001ab43efddb4d08b8d2aff33d) Centre short notification titles against the icon and drop the empty icon slot
- [eb3a488](https://github.com/omacom/omarchy/commit/eb3a488214bcb9798a6d1455cc9b724c223a504f) Trim the notification service
- [c177d7a](https://github.com/omacom/omarchy/commit/c177d7a68758942d8bc1f2c1dbcad1e1070639b8) Trim the notification cards and panel
- [2c68464](https://github.com/omacom/omarchy/commit/2c68464454195215fe81a0dc4ebd075ddf3d556f) Trim the notification logic and its tests
- [c85662a](https://github.com/omacom/omarchy/commit/c85662aff744fce117d31591c2e558da4b6a5a4c) Trim the notification helpers and their tests
- [ef6d0be](https://github.com/omacom/omarchy/commit/ef6d0be195aff00b07407439c5436c7a71bcdf0f) Trim the notification demo, docs and migration
- [c4cb519](https://github.com/omacom/omarchy/commit/c4cb519f693ab5b13d524a586602904333dcf0ae) Pass icon fields to the helper in the form it accepts
- [1e964d8](https://github.com/omacom/omarchy/commit/1e964d82830de514d1b8ed6a207d74e6395b4790) Open the panel from the bell when only sources are snoozed
- [3f02f8c](https://github.com/omacom/omarchy/commit/3f02f8cfc12a429406304e947b6404ba3641d151) Decode numeric entities beyond the BMP as whole characters
- [a9e5414](https://github.com/omacom/omarchy/commit/a9e54140b36f9546084184e8533528cff831832b) Format notification counts for the current language
- [eca5961](https://github.com/omacom/omarchy/commit/eca596150c0787a82a9dc126563f9833ced1c60f) Expect sender images to decode only when a sandbox works
- [b0490b4](https://github.com/omacom/omarchy/commit/b0490b4bf166d2e0bb7465b3c301e2b7fea388eb) Give held cards their resolved icon and resolve pruned icons again
- [0e5e49c](https://github.com/omacom/omarchy/commit/0e5e49ce389e2612c48cd4e79179c30e0ddda745) Merge queued store writes so a burst cannot drop closes
- [3069f20](https://github.com/omacom/omarchy/commit/3069f2031b514faa3fd3cb4ab287a43782b0c284) Treat plural I18n calls as translated in the literal scan
- [601f387](https://github.com/omacom/omarchy/commit/601f387bba1daf11a439c4c71408172d655849a9) Format the snooze day offset for the current language
- [f07acb4](https://github.com/omacom/omarchy/commit/f07acb453d114683ea1c3ef920e611b8559b85dd) Retry a missing icon once a minute instead of once a session
- [6904696](https://github.com/omacom/omarchy/commit/6904696025c8cb9179005946e0a8bf09ed3ad845) Stop asking the icon helper to fetch site icons
- [f3eeed0](https://github.com/omacom/omarchy/commit/f3eeed02ee8a195d88327d4754e670013cfc9990) Stop fetching site icons for notifications
- [a4a368b](https://github.com/omacom/omarchy/commit/a4a368bca5c05ebd573bca63fba4b561ab55f5fe) Document that notification site icons are never fetched
- [9a2346b](https://github.com/omacom/omarchy/commit/9a2346b6849e19748bbaa98a3c54dd8ff2ab618a) Drop the site icon cache instead of migrating it
- [0cb8ee6](https://github.com/omacom/omarchy/commit/0cb8ee6274ea3c0b034ddcd71497262fc70e6315) Drop the icon scheme argument nothing reads
- [8533da7](https://github.com/omacom/omarchy/commit/8533da71ba17ef91e2c834ec581549dc6c51c50b) Fix the demo's replay after the helper environment rename
- [f109b08](https://github.com/omacom/omarchy/commit/f109b08539268783fb2ddf092a8c4770a3f201d8) Replace the notification engine in place, without a migration
- [3c2247f](https://github.com/omacom/omarchy/commit/3c2247f1afb86fe5fce3dbed03d6eba9b140f144) Export OMARCHY_PATH so the factory reset's prompt shows under sudo (#16032)
- [bf7e8e6](https://github.com/omacom/omarchy/commit/bf7e8e6d6e2b2474c0e7afd3dc13c7aacea6e81d) Let the input method test compose on a UK install (#16031)
- [efd94d4](https://github.com/omacom/omarchy/commit/efd94d47b691c811287fb56b36d114ad2f8888d6) Merge remote-tracking branch 'origin/quattro' into fix/t3code-migration-no-launch
- [168fa54](https://github.com/omacom/omarchy/commit/168fa54b7d852a04a203ced07437467363dfe14a) Install the T3 Code app during updates without a prompt or a launch
- [2952b1c](https://github.com/omacom/omarchy/commit/2952b1c0020989fd1a87377039f5d9bb973df941) Give an updated notification a fresh countdown
- [c3ac1f9](https://github.com/omacom/omarchy/commit/c3ac1f9782b396499c78468675b231990b3138d6) Keep reply lookups for cards still waiting to be shown
- [6d75964](https://github.com/omacom/omarchy/commit/6d75964ef9b210fb4d0e49f454c7dabfaa7c094d) Fit saved notifications within the store's size limit
- [e3e08d3](https://github.com/omacom/omarchy/commit/e3e08d305052153f2e5ef601f270eb3976a56206) Read the previous engine's Do Not Disturb until quiet state is saved
- [f487703](https://github.com/omacom/omarchy/commit/f4877037434ba02ce5da0f114b9b6e96d0e5dfac) Clear leftover fetched site icons instead of pruning them
- [7b995c7](https://github.com/omacom/omarchy/commit/7b995c7dc20711d37200126eb521c030311d605f) Drop the T3 Code package only once the app is themed
- [60cce7a](https://github.com/omacom/omarchy/commit/60cce7afad06216203e0d86a6a03553bfc791551) Count a custom T3CODE_HOME as having run T3 Code in its migration
- [ab669e8](https://github.com/omacom/omarchy/commit/ab669e825a39b9030dfb8bb93daab67e8d02d2e7) Translate the redacted notification placeholder where it is shown
- [4258c79](https://github.com/omacom/omarchy/commit/4258c7940a6bc68bd316987423650c1dddf28f2f) Resolve notification icons in the shell
- [329fd1a](https://github.com/omacom/omarchy/commit/329fd1a9b83ae6dd456cc82895c54734cf5676a2) Fall back to the desktop-entry hint for notification icons
- [3b3349d](https://github.com/omacom/omarchy/commit/3b3349d59cc53afd2f7ce12af3fdb13d419a6457) Load sender images directly
- [8282fab](https://github.com/omacom/omarchy/commit/8282fab206cb42f22684e32068c2f2aa3839b34b) Merge quattro into fix/factory-reset-shared-esp
- [8bcba1d](https://github.com/omacom/omarchy/commit/8bcba1dbde2ce3812ee85ade6cb5c6b5342aa8d9) Remove the icon helper
- [e787ccd](https://github.com/omacom/omarchy/commit/e787ccd996fef518ea17fe0475a3151704dc2f72) Merge pull request #14178 from manuaudio/fix/t3code-migration-no-launch
- [98d76ec](https://github.com/omacom/omarchy/commit/98d76ec30b8d40e5a69893f05d056e8027e6bfca) Run the KDE Connect helper directly
- [1dd3ca6](https://github.com/omacom/omarchy/commit/1dd3ca62ec0dc788803c7f73cda7bf14424c4b75) Remove the helper sandbox
- [33ae361](https://github.com/omacom/omarchy/commit/33ae36133fb383e858512480e3845700f2fdfb1a) Trim the Neovim migration test to the omarchy-nvim regression
- [8e5bdd0](https://github.com/omacom/omarchy/commit/8e5bdd00efbf5b15f43d082e28b3a3a6364e48e2) Merge pull request #15141 from imzihuailin/fix/15072-nvim-migration
- [b6bde6d](https://github.com/omacom/omarchy/commit/b6bde6d05650c31a4e4d19c0d1416cf7751d5ccf) Keep notification history in the shell
- [773a1fd](https://github.com/omacom/omarchy/commit/773a1fd6cabf56f45a8cb6834adcbe66dc31906f) Reload an updated notification's picture from the same path
- [b5719a5](https://github.com/omacom/omarchy/commit/b5719a5c4f37bee8387a67f6180fdb218442ac6c) Drop the Remove > Services pairing test
- [4f920a2](https://github.com/omacom/omarchy/commit/4f920a2022c51409dfc57c7f812ced159621b99f) Merge pull request #15526 from wstock/menu-remove-service-1password
- [8dfc94e](https://github.com/omacom/omarchy/commit/8dfc94e95deb849c0a4c90aed0df940dcb9ade00) Merge pull request #7716 from OldJobobo/fix/gate-calculator-bindings
- [f95e105](https://github.com/omacom/omarchy/commit/f95e1059d5a3a4393aef84013949ce00372de3ef) Merge pull request #15972 from omacom/tui-touchpad-scroll
- [e9fee63](https://github.com/omacom/omarchy/commit/e9fee63301097d635c54e6f90fd16942dcb6c03b) Merge pull request #15220 from omacom/battery-media-marquee
- [2ba11a4](https://github.com/omacom/omarchy/commit/2ba11a4d1ea69af9437cdb0f8b2bf5b299e7d2ff) Renumber the Brave Origin Copy URL rerun after quattro's migrations
- [84c2f54](https://github.com/omacom/omarchy/commit/84c2f54070f495881feb041088f76a31934b2b11) Leave Brave Origin's roots to the rerun alone
- [4fa9615](https://github.com/omacom/omarchy/commit/4fa96158f27c70229c4bb623a4aad016353be84e) Cut the Copy URL migration test down to the Brave Origin rerun
- [a951263](https://github.com/omacom/omarchy/commit/a951263326b5dc682880b0e6e65aee12dcc3780e) Merge pull request #10308 from omacom/brave-origin-copy-url-repair
- [a10f7a1](https://github.com/omacom/omarchy/commit/a10f7a10f7baeca556f7b48020f6d4d7ae9a5cb3) Remove inline reply and the KDE Connect helper from notifications
- [6cb521d](https://github.com/omacom/omarchy/commit/6cb521d973045722e11ed4c110844a5537a9175f) Treat KDE Connect as an ordinary notification sender
- [0ffa677](https://github.com/omacom/omarchy/commit/0ffa677e347f570fa22a031359a006e5d6414e7a) Merge pull request #14949 from omacom/omabot/pr-13699
- [03ff1ef](https://github.com/omacom/omarchy/commit/03ff1eff3812933f7088484533784d2f63eaf19a) Merge pull request #15932 from omacom/notifications-omapager
- [0a7beb7](https://github.com/omacom/omarchy/commit/0a7beb7d6fe2b677bdc57ff05518b073b2d6ee60) Take the keyboard screenshot on Super + Ctrl + Alt + C and give Google Maps back Super + Shift + S (#16048)
- [6bee248](https://github.com/omacom/omarchy/commit/6bee248a3c23e403f30b72be80c3815bf7ad6cac) Make Appearance a top-level menu holding the Style options (#15973)
- [7901c44](https://github.com/omacom/omarchy/commit/7901c449a6ffe77ac65cc914de44a10a7d493e80) Move Calculator and Activity to the apps tier (#16071)
- [5264cbb](https://github.com/omacom/omarchy/commit/5264cbbd139624b4d3e840cb66fc4ce8f256d14d) Add Super + Ctrl + T for themes and W for backgrounds, move Network to N (#16072)
- [3ac4365](https://github.com/omacom/omarchy/commit/3ac43659dcbf88e84d951e3ce979b48a60a7d1f2) Let install media preset the language, keyboard and timezone (#15522)
- [dde0d12](https://github.com/omacom/omarchy/commit/dde0d123bb7e130cb7c8a679ed9d3b8b2a11887e) Offer stable and rc on aarch64 (#16065)
- [e98a325](https://github.com/omacom/omarchy/commit/e98a3254c53d02399aafc56190eebd733edf949f) More relevant demo
- [ce39c5e](https://github.com/omacom/omarchy/commit/ce39c5e9e9e4f5db7e023a07d0eeda9351ef9c80) Keep a switch to stable or rc from stranding edge on an old omarchy-dev (#15903)
- [be5fefb](https://github.com/omacom/omarchy/commit/be5fefbebe3c3103bbd68c2ef7624881c71848b3) Merge pull request #15512 from scottjones/fix/fingerprint-enroll-guide
- [087f73d](https://github.com/omacom/omarchy/commit/087f73d899b456ce5275ebf27294d379585fbdb1) Merge pull request #14874 from scottjones/fix/drive-password-resume-slot
- [6905265](https://github.com/omacom/omarchy/commit/6905265089ad40bae10dcec24fff626d1b760b87) Switch the default kernel from Update > Kernel (#15966)
- [f1d1e9c](https://github.com/omacom/omarchy/commit/f1d1e9c67ef2825923421d54ce97a30d286ca581) Preserve monitor layout when re-enabling a display (#16147)
- [2e7c1fe](https://github.com/omacom/omarchy/commit/2e7c1fe43ec7a2ce1a9b3abafd766450eabee081) Refresh floating workspace exclusions for late personal rules (#16143)
- [fa94263](https://github.com/omacom/omarchy/commit/fa942634668eeede328f2fb4460e0a6bf1ba457a) Load translation catalogs before their first lookup (#16059)
- [82662dd](https://github.com/omacom/omarchy/commit/82662dd2627db3b22c63616d3cae025aeb0f1e47) Install GPU libraries before Lutris and Battle.net dependencies (#16046)
- [7075b61](https://github.com/omacom/omarchy/commit/7075b61c6aaa5d8589f6e816867508fc96dc49d9) Offer the first-run update only when there is something to update (#16211)
- [a17a001](https://github.com/omacom/omarchy/commit/a17a001b72799ccad1b1c9e859d4a5760a57e820) Move us to the front of a non-Latin layout list instead of duplicating it (#14076)
- [be54892](https://github.com/omacom/omarchy/commit/be54892f36b2803f1b798b0c0603cf8b25e4093c) Fix shell tests that read the developer's session, and add testing rules for agents (#16229)
- [5d8cc33](https://github.com/omacom/omarchy/commit/5d8cc3313b2c60786d4e5019a68906873aed36bd) Drop [aur] from the Apple Silicon pacman template (#16189)
- [976872f](https://github.com/omacom/omarchy/commit/976872fa3bfa01f126a4bf0ced3d5542e5566bab) Set the clock from ntp.omarchy.org instead of Arch's pool (#16247)
- [46ef114](https://github.com/omacom/omarchy/commit/46ef11455fe924648bd33052774423f818a00a97) Find the weather location and the installer's timezone with geo.omarchy.org (#16240)
- [b12539b](https://github.com/omacom/omarchy/commit/b12539b3c8ef747a5edab9c9e06b93bc761acc11) Make the keybindings menu's Lua bind scan safe against load-time config reads (#7564)
- [c39fd2a](https://github.com/omacom/omarchy/commit/c39fd2afdd40b4b0f18b3f5dc1369c4d6ae35e26) Keep the menu's rows when a source file is read mid-write (#16268)
- [3357f90](https://github.com/omacom/omarchy/commit/3357f90590d61330097dbe7763d39bf4e5bfd85a) Check connectivity against ping.omacom.io and fix the captive portal sign-in flow (#16186)
- [eb0c515](https://github.com/omacom/omarchy/commit/eb0c5155c8e52509972f06971512bd8a0c6f0c50) Battery notification says Fully charged and leaves out readings it doesn't have (#16272)
- [c872d57](https://github.com/omacom/omarchy/commit/c872d57cf3ff5089854b6e70706dd736b6d0245b) tailscale: virtualize the machine list so huge tailnets don't melt the shell (#7623)
- [aba6184](https://github.com/omacom/omarchy/commit/aba618402b5ad8d9517ddd3d21bd6ac5bd492a78) End an indexed walk over the keybindings scan's stub collections (#16276)
- [03b21c1](https://github.com/omacom/omarchy/commit/03b21c1b6707d4ba19ae7b16df2c15b44330ab03) Keep the fcitx5 unit inert when fcitx5 isn't installed (#11694)
- [ff545d5](https://github.com/omacom/omarchy/commit/ff545d5cba713337829717bf4d10dc4b4178392c) Notification polish and trims after Omapager (#16277)
- [446361a](https://github.com/omacom/omarchy/commit/446361a5f75bc835fe85da7a499b82351e6eb596) Shorten the battery toggle and say Stay Awake / Allow Sleep (#16271)
- [a4c2a30](https://github.com/omacom/omarchy/commit/a4c2a306c27e191490dc1e8c65f8ec1bef9ce658) Trim the notification engine's options, IPC and leftovers, and put snooze on one line (#16296)
- [d743f8e](https://github.com/omacom/omarchy/commit/d743f8e8245dd98f27b73b1d37dcfbd579c825d3) Fix Taildrop notifications: empty text, full path, missing previews, red title (#16301)
- [331fa3d](https://github.com/omacom/omarchy/commit/331fa3d52f9acbb10dd0062c8ab64e03aeb4fbca) Leave the indicator peek shut while hovering right of the clock (#16293)
- [3c7027d](https://github.com/omacom/omarchy/commit/3c7027db2a4fa9fa6a49d7af7f87c27ac48e677d) Show and dismiss notifications instantly instead of sliding and fading (#16306)
- [967bbdd](https://github.com/omacom/omarchy/commit/967bbdd7346e6e2ff1a6af33c5d762ea784832cc) Download packages from Omarchy's China mirrors on installs in China (#16256)
- [7bab7c2](https://github.com/omacom/omarchy/commit/7bab7c2f38d772cb443448d13409e1e413b4ab31) Remove notification snooze and the screen-sharing offer (#16429)
- [cbd44ba](https://github.com/omacom/omarchy/commit/cbd44ba1d649c334f3c9dcd8628c5c390524d344) Remove the notification panel and its preferences (#16430)
- [0d8edf3](https://github.com/omacom/omarchy/commit/0d8edf3812e0caafd155760c96bc2862933f611a) Delete the reader's own copy of the prints when removing fingerprints (#16403)
- [dcfc438](https://github.com/omacom/omarchy/commit/dcfc4387d21ff651e2c70f7a1470002972721bd0) Remove migration tests (#16302)
- [83d429c](https://github.com/omacom/omarchy/commit/83d429c63f915657446da05933f9335e58a7c548) Seed the Hermes app where ARM rebuilds it (#16124)
- [7c59c2b](https://github.com/omacom/omarchy/commit/7c59c2b03672cc7ad266dfc84664f3af7c248220) Drag a bar widget off the bar to remove it with a poof
- [e2d618a](https://github.com/omacom/omarchy/commit/e2d618ac298f08518e9974ade8025c35fed2a770) Keep the bar surface full-size so drags survive empty workspaces
- [b92adbb](https://github.com/omacom/omarchy/commit/b92adbb1f183dc4905bb08cf0a2078cc51b22f3e) Poof a removed bar widget away in a billowing cloud
- [1acb5a2](https://github.com/omacom/omarchy/commit/1acb5a2cac6622c6ad9a44353b0757248ecb0681) Simplify dragging a bar widget off to remove it
- [75d2206](https://github.com/omacom/omarchy/commit/75d2206e08606acc606c550f02a7b0be3f5c7f71) Let a platform turn its fingerprint reader on with the owner's agreement (#16360)
- [7a1960b](https://github.com/omacom/omarchy/commit/7a1960b30f730cbf2170c8be901acaee791616d8) Merge pull request #6782 from omacom/bar-drag-off-remove
- [02defc5](https://github.com/omacom/omarchy/commit/02defc51d62913f12dd9c1915c8509e038e6b086) Animate notifications in and out along Emil Kowalski's motion rules (#16469)
- [99f479b](https://github.com/omacom/omarchy/commit/99f479b65b59842b2c2c41852d209db960010b6d) Merge pull request #15878 from bjarneo/ethereal-roadster-starlight
- [e1891c9](https://github.com/omacom/omarchy/commit/e1891c910d65c37be401d2b614fa149d7cd7c671) Let omarchy-notification-send add action buttons (#16466)
- [f643adc](https://github.com/omacom/omarchy/commit/f643adc38ad65c4900609c5c1b0b5c359fef147a) Control notifications with the keyboard (#16471)
- [aaccd24](https://github.com/omacom/omarchy/commit/aaccd247174de475bb3f17bead1a1f6848f7b2b3) Grow panels out of the bar, close them faster, and morph between them (#16470)
- [59d6f7f](https://github.com/omacom/omarchy/commit/59d6f7f1f09c8e280941565f3d82b624939f7476) Grow panels to fit content that arrives after they open (#16483)
- [420ee0b](https://github.com/omacom/omarchy/commit/420ee0bee8bc29585bd16dcb25a83c620c0cdd1a) Keep the network panel open after picking a DNS provider (#16485)
- [2a1ff8d](https://github.com/omacom/omarchy/commit/2a1ff8d83647209f2f3247b4231977732d58df29) Show a video wallpaper's still frame on the lock screen instead of playing it (#15289)
- [a08ff34](https://github.com/omacom/omarchy/commit/a08ff3448718284f452a9b72fd0e55c67c061776) Let buttons give a little under the pointer (#16484)
- [1993633](https://github.com/omacom/omarchy/commit/19936335bb3906e79c8099b0a0b4a7007b94b2db) Write down the shell's motion rules for Omarchy and plugin work (#16486)
- [1b6a22f](https://github.com/omacom/omarchy/commit/1b6a22f4e91cf8156b8654e897a6b43fec43681a) Show the next bar tooltip at once while one is up (#16488)
- [54d4b7b](https://github.com/omacom/omarchy/commit/54d4b7b027fc64dcd0afa8206ad8f05e71381676) Ease the dock's motion and stop it when animations are off (#16491)
- [2ee9faf](https://github.com/omacom/omarchy/commit/2ee9fafa6a3ddb82cb10ce24deadf8d7a42cacaa) Fade the bar's colors on a theme change in 250ms, inside the motion budget (#16489)
- [8918fba](https://github.com/omacom/omarchy/commit/8918fbaec3224f34c5b8da763cd63ab4fffd7786) Route the remaining looping animations through Style.duration (#16490)
- [e16a7e7](https://github.com/omacom/omarchy/commit/e16a7e710887ee640d921b3da85a893eee56aed6) Ask for the git identity after first login, with GitHub sign-in (#16288)
- [6ddadd4](https://github.com/omacom/omarchy/commit/6ddadd450308695447939b67e5cca89694012b6b) Fail the shell tests on an animation duration outside Style.duration (#16492)
- [5bd0b64](https://github.com/omacom/omarchy/commit/5bd0b6458bda5010ddd8951020cc443e82d0a177) Show Open and Omacut buttons on the saved screen recording toast (#16499)
- [80e9460](https://github.com/omacom/omarchy/commit/80e946083ba5e8869a95d23783954ded680e434e) Add every coding agent and provider to the agents panel and the default agent (#14040)
- [13daf59](https://github.com/omacom/omarchy/commit/13daf594a4dfb7f23d7083e91f8f4e94940ea2a3) Let bar icons give a little under the pointer (#16503)
- [4e46082](https://github.com/omacom/omarchy/commit/4e46082b289e34d99313fcdd7a6507ea7450e429) Show each toast from an unnamed sender on its own instead of stacking them (#16515)
- [bd97868](https://github.com/omacom/omarchy/commit/bd97868a4f1d2dff160f15f59a289169375c6cd9) Open the indicator peek only left of the clock, not over it (#16517)
- [4fa93e9](https://github.com/omacom/omarchy/commit/4fa93e9f4c4f1e573009100d300141eff5270e6f) Translate the setup form from Omarchy's catalogs and let callers give a timezone fallback (#16049)
- [9ebdc30](https://github.com/omacom/omarchy/commit/9ebdc307bd45f36c29a583b0f3877219bb2514a2) Merge quattro and keep the console split through the new keybindings menu
- [ea7a030](https://github.com/omacom/omarchy/commit/ea7a030bbba890ebf682ea7236b9272a4186ba57) Merge pull request #7579 from mwikala/preserve-full-scratchpad
- [ef93001](https://github.com/omacom/omarchy/commit/ef930018396bb48bfcc72393628375b067ac3188) Launch a browser again when the configured one is gone (#16422)
- [50e229d](https://github.com/omacom/omarchy/commit/50e229d08f9bc4996b35be1468236d783a3e79d6) Keep the titlebar plugin loaded once a session has floated a workspace (#16397)
- [bcb6ac3](https://github.com/omacom/omarchy/commit/bcb6ac313d886240e3e002817a4115664e076dee) Translate the first-run, git setup, weather and input-method notifications (#16550)
- [701f159](https://github.com/omacom/omarchy/commit/701f15995c00aa702fed9c09fa98ba656f222b24) Switch to omarchy-power-profiles-daemon for working power profiles on ARM laptops (#14737)
- [63ac02e](https://github.com/omacom/omarchy/commit/63ac02e5452b9c83b4af620bc0df60a45ea171d1) Run the translate job when nothing needed extracting (#16559)
- [1e2d9f9](https://github.com/omacom/omarchy/commit/1e2d9f9ba4d72bde4406112e957aaa1f3b928894) Stack Taildrop notifications into one deck (#16561)
- [e5df29b](https://github.com/omacom/omarchy/commit/e5df29b64a0546531655152feaed0922f09225fc) Finish system updates when mise tool downloads fail (#16318)
- [0e6ca28](https://github.com/omacom/omarchy/commit/0e6ca28d170524b10ca3d630f8ffc98565db2ee2) Hold an error reply's body to the same deadline as a success (#16506)
- [59e30b3](https://github.com/omacom/omarchy/commit/59e30b39f14677ba7c23263b9b426320c7b4bb91) Send the low battery warning as a normal toast that goes after 30 seconds (#16562)
- [0f014d1](https://github.com/omacom/omarchy/commit/0f014d1f81d236b07835ae2abd210527b19b2308) Let the power-profiles-daemon migration finish without an active session
- [1381fa0](https://github.com/omacom/omarchy/commit/1381fa089c0fabb7bd63e7295e1d839c172a59f8) Merge pull request #16565 from omacom/fix-powerprofiles-migration-ssh
- [24f59da](https://github.com/omacom/omarchy/commit/24f59da29c14fad704e4db29c04f339780e9080e) Authorize omarchy update once, AUR and boot check included (#16568)
- [69f0317](https://github.com/omacom/omarchy/commit/69f0317ec4c914500c933e50165199c54b6320fd) Make shell tests pass from a symlinked checkout, an agent session, and a packaged install (#16570)
- [d52d57c](https://github.com/omacom/omarchy/commit/d52d57c378e5ff1136609c446e6027b752255907) Update translations (#16574)
- [1c880c0](https://github.com/omacom/omarchy/commit/1c880c0b32a2ee5415427a5c6ea1aafe345fe15b) Start the herdr server with the desktop session (#16572)
- [3372ceb](https://github.com/omacom/omarchy/commit/3372ceb223c498e87538d367c7a087fde831ce5f) Merge the translation sync pull request in the land job (#16573)
- [969aab5](https://github.com/omacom/omarchy/commit/969aab5829beed2d1c95a1578094b1e697deb927) Update translations (#16579)
- [632bf2d](https://github.com/omacom/omarchy/commit/632bf2dd5cff1066249fe586ff6c6470d2af252d) Read the language file with builtins in omarchy-i18n (#16584)
- [b72863a](https://github.com/omacom/omarchy/commit/b72863a22b52c75b6afbcb93b275f4ec456d17db) Update translations (#16586)
- [d93ad7c](https://github.com/omacom/omarchy/commit/d93ad7c2242e531e26c4e83759bb97cb7a58a4da) Announce saved screenshots with Open and Edit buttons (#16505)
- [e4e4622](https://github.com/omacom/omarchy/commit/e4e462209af3d85b2491ddce9e7e3f67d0896692) Update translations (#16588)
- [d407074](https://github.com/omacom/omarchy/commit/d407074a7a7d4bea0f59bc65649926ded896d6bd) Use the upscaled roadster starlight background in ethereal (#16592)
- [e59c675](https://github.com/omacom/omarchy/commit/e59c675c69e3009a19b1fc4f542ff12e15b12ea2) Give agents mise shims so they find tools installed after launch (#16593)
- [b8c3c22](https://github.com/omacom/omarchy/commit/b8c3c22e9327c6361040c11a794e7c65ed99875b) Hide gum help lines in the git setup flow (#16589)
- [cf1909a](https://github.com/omacom/omarchy/commit/cf1909a9bea8ae6472014af1b63c487b0c033b33) End the git setup notification body with a period
- [b987526](https://github.com/omacom/omarchy/commit/b987526c1e049480c91fc52025aaa20611de513f) Update translations (#16595)
- [a1ea609](https://github.com/omacom/omarchy/commit/a1ea6096d0bd88bd61ed871fc35628cd56e8bb72) Replace Osaka Jade with Jade Horse (#16594)
- [f48f25e](https://github.com/omacom/omarchy/commit/f48f25ed1b5c7cfc3174180f52e7d2e2ff2cf388) Update translations (#16597)
- [7aae3f5](https://github.com/omacom/omarchy/commit/7aae3f54eed03fe422cb838b4aa45a9a7d8bf2c5) Stop echoing the screensaver's exit key into the corner (#16596)
- [35ba844](https://github.com/omacom/omarchy/commit/35ba8447e4f2eca0c0cb798defeb07eb7391361e) Stop a closing popup card from taking clicks (#15111)
- [36faffc](https://github.com/omacom/omarchy/commit/36faffc071e8de10399b10f211c63ba202a2abdb) Ignore Hyprland's FALLBACK output when checking for external monitors (#13749)
- [2e86b52](https://github.com/omacom/omarchy/commit/2e86b52f111f29625b4b338a5459d482972d7178) Update translations (#16598)
- [88bf600](https://github.com/omacom/omarchy/commit/88bf60039536c332ef2cdf79d9376400492e135d) Ignore the full stop after a URL when checking translated manual chapters (#16580)
- [344116a](https://github.com/omacom/omarchy/commit/344116a088a842de89a2e206027a4b0e17d20bd3) Translate the About box headings, keys, age, uptime and update date (#16560)
- [6851ac9](https://github.com/omacom/omarchy/commit/6851ac91e458cf4508f36789d053aea2a1a2e4ec) Update translations (#16602)
- [2fca7fe](https://github.com/omacom/omarchy/commit/2fca7fe073e5ef71cd066ddb0d2294ad067deaf5) Update translations (#16604)
- [6573c3d](https://github.com/omacom/omarchy/commit/6573c3d4866ee73ae448c80c1e96771a2b4230ca) Name the hibernation resume device by its filesystem UUID (#16658)
- [c0b1088](https://github.com/omacom/omarchy/commit/c0b10882e6e9e69eeca5773312ff4b527a25eff7) Update translations (#16659)
- [58858ae](https://github.com/omacom/omarchy/commit/58858aecfa2a3e26c4d0a1371b369c672474fd04) Anchor the clock and weather popups under their widgets (#8942)
- [3bc4d0f](https://github.com/omacom/omarchy/commit/3bc4d0f79c5adc294d580c21c6fe61819ceda9e8) Make Super+comma dismiss, invoke, or focus the newest notification by its buttons (#16699)
- [ce03516](https://github.com/omacom/omarchy/commit/ce035166839393d72436ba57fee722a75b7a4a0c) Update translations (#16702)
- [425d59a](https://github.com/omacom/omarchy/commit/425d59af557b583d0faf979956c896902984b488) Count a notification's click as one of its actions on Super+comma (#16701)
- [6a44388](https://github.com/omacom/omarchy/commit/6a44388710ecf59a57560a98f8944564d06c67e3) Measure network speed with Omarchy's own service (#16681)
- [5d07f5e](https://github.com/omacom/omarchy/commit/5d07f5e18035d02c59d31a752af27b5aee6d7980) Update translations (#16705)
- [4601078](https://github.com/omacom/omarchy/commit/4601078a7d84ece7a3329b9a7ca6fce0a47d254f) Update translations (#16706)
- [67faeb0](https://github.com/omacom/omarchy/commit/67faeb0d2b55c38691b471891125ea8b8c77c711) Stop the background intro's frame poll once nothing is covered (#16731)
- [b8706a3](https://github.com/omacom/omarchy/commit/b8706a3f9eb185f56b61c6141561deba652beddf) Let Snapdragon laptops' keyboards type at the disk unlock prompt (#16688)
- [6cf686c](https://github.com/omacom/omarchy/commit/6cf686c69f326cc0e53765c091c841778e9dbf28) Clear the SoundWire routes the retired N1x UCM profiles left behind (#16233)
- [bedf37a](https://github.com/omacom/omarchy/commit/bedf37a286940f4eb0650d613ed2b752817f3841) Accept the Lenovo Pro 9 N1x GPU memory reservation layout (#16423)
- [412c7fe](https://github.com/omacom/omarchy/commit/412c7fe8d80ee3f903d5c046e7431ea9ccc4e049) Keep non-ASCII background names from aborting the quattro upgrade (#15277)
- [4d9ea5a](https://github.com/omacom/omarchy/commit/4d9ea5aac4962e0e0a527983ea191adea86ccf51) Keep the browser chosen on 3.x through the Quattro upgrade (#15074)
- [1d00a40](https://github.com/omacom/omarchy/commit/1d00a40244f9cf5fd91dffecb758537cf3839a76) Turn a panel-disabled laptop display back on once its external display is unplugged (#16310)
- [22ef225](https://github.com/omacom/omarchy/commit/22ef22541744d511293e6541dec83121e679771c) Keep unresolved FIDO2 migrations pending (#16421)
- [39d5665](https://github.com/omacom/omarchy/commit/39d56653d649312453316f2536fcfb9982f08fb8) Skip kernel migration without Limine tooling (#14188)
- [463a9a1](https://github.com/omacom/omarchy/commit/463a9a1d28d45e9c4714286745023272fc23fde7) Never overwrite a shell.json the shell could not read (#14534)
- [29cf76f](https://github.com/omacom/omarchy/commit/29cf76f141d1df7aecc67d631bffa0ebed6bedee) Remove tests that only read source text (#16334)
- [6250ec6](https://github.com/omacom/omarchy/commit/6250ec6da777ed5a0414fc40a5ae134bff7b4371) Remove live-desktop pixel tests (#16336)
- [25c4066](https://github.com/omacom/omarchy/commit/25c406631a3af51e58237a2b82d5eb6c29761295) Merge duplicate tests into shared and table-driven files (#16337)
- [fd58845](https://github.com/omacom/omarchy/commit/fd5884589bbfd94555a08cedc853ce2434191df1) Replace fixed sleeps in flaky tests with readiness signals (#16338)
- [c6f091e](https://github.com/omacom/omarchy/commit/c6f091e5c6de4950ac5467e2ad36ab11cfab2b1b) Remove tests that can't fail (#16756)
- [3138acf](https://github.com/omacom/omarchy/commit/3138acf5c45b2eba09b326aeaecbf2eff49a137e) Share the QML fixture and scratch-shell test harnesses (#16339)
- [5d83ad9](https://github.com/omacom/omarchy/commit/5d83ad95fd894cecaa9d908d9e92f35b952bd0db) Drop N1x settings that linux-omarchy 7.3-3 now handles in the kernel
- [958254e](https://github.com/omacom/omarchy/commit/958254e92ab3dba59ebe3257cbbaffd3357be2d5) Merge pull request #16758 from omacom/n1x-settings-to-kernel
- [6cc767f](https://github.com/omacom/omarchy/commit/6cc767f5ebe86312975315450332cc66ac2010ca) Keep the clock still when right click cycles its format (#16603)
- [40054aa](https://github.com/omacom/omarchy/commit/40054aa7a461bbc654aa728e4dfb9e62798feca0) Bound wallpaper resource use when sampling bar colors (#14281)
- [18ecf39](https://github.com/omacom/omarchy/commit/18ecf39440174ae6a5a7e097434d1d4375292375) Keep the clock still on every click (#16791)

## 2026-10-04

72 new commit(s) on omacom/omarchy@quattro, [b421b1b...454b67d](https://github.com/omacom/omarchy/compare/b421b1b479ee9ea0863792282eee4ffeb50923dc...quattro).

| Area | Upstream files | Winarchy files to review |
|---|---|---|
| CLI | `bin/omarchy` | `bin/winarchy.ps1`<br>`lib/cli.ps1` |
| Coding agents | `bin/omarchy-agent`<br>`bin/omarchy-default-agent` | `lib/agents.ps1` |
| Agent accounts | `bin/omarchy-agent-account-add`<br>`bin/omarchy-agent-account-home`<br>`bin/omarchy-agent-account-list`<br>`bin/omarchy-agent-account-mode`<br>`bin/omarchy-agent-account-remove`<br>`bin/omarchy-agent-account-rename`<br>and 2 more | `lib/accounts.ps1` |
| Agent usage | `bin/omarchy-agent-usage-claude`<br>`bin/omarchy-agent-usage-codex`<br>`bin/omarchy-agent-usage-fireworks`<br>`bin/omarchy-agent-usage-grok`<br>`bin/omarchy-agent-usage-update` | `lib/agents/` |
| Other commands | `bin/omarchy-audio-output-sink`<br>`bin/omarchy-openclaw-onboard`<br>`bin/omarchy-provision-first-run`<br>`bin/omarchy-provision-owner`<br>`bin/omarchy-provision-user`<br>`bin/omarchy-restart-shell`<br>and 5 more | `lib/` |
| Install / Remove | `bin/omarchy-install-ai-openclaw`<br>`bin/omarchy-install-gaming-gpu-lib32`<br>`bin/omarchy-install-gaming-steam`<br>`bin/omarchy-install-openclaw-cli`<br>`bin/omarchy-remove-ai-openclaw` | `lib/catalog.ps1` |
| Menu | `bin/omarchy-menu-images` | `zebar/omarchy/menu.json`<br>`zebar/omarchy/menu.js`<br>`ahk/menu.ahk` |
| Other | `default/agents/skills/omarchy-app/SKILL.md`<br>`default/agents/skills/omarchy-app/templates.md`<br>`default/bash/fns/agent-accounts`<br>`default/sddm/hyprland.lua` | - |
| Theming | `default/themed/neovim.lua.tpl` | `lib/render.ps1`<br>`lib/themes.ps1`<br>`lib/targets.ps1` |
| Upstream only | `install/omarchy-base.packages`<br>`install/user/mise.sh`<br>`migrations/1788256455.sh`<br>`migrations/1790397381.sh`<br>`migrations/1790702362.sh`<br>`migrations/1790702606.sh`<br>and 38 more | - |
| Manual | `manual/14-omarchy-cli.md`<br>`manual/17-ai.md` | `manual/14-winarchy-cli.md`<br>`manual/17-ai.md` |
| Shell (bar, menu, OSD) | `shell/Ui/PanelKeyCatcher.qml`<br>`shell/plugins/README.md`<br>`shell/plugins/agents/Agent.qml`<br>`shell/plugins/agents/Main.qml`<br>`shell/plugins/agents/Panel.qml`<br>`shell/plugins/agents/README.md`<br>and 9 more | `zebar/omarchy/` |
| Top bar | `shell/plugins/bar/Bar.qml`<br>`shell/plugins/bar/widgets/Indicators.qml` | `zebar/omarchy/bar.html`<br>`zebar/omarchy/bar.css` |
| Bar panels | `shell/plugins/panels/audio/Model.js`<br>`shell/plugins/panels/audio/Panel.qml`<br>`shell/plugins/panels/monitor/Panel.qml`<br>`shell/plugins/panels/network/Model.js`<br>`shell/plugins/panels/network/Panel.qml` | `zebar/omarchy/` |

Commits:

- [c9faea7](https://github.com/omacom/omarchy/commit/c9faea7c55c560107d8c0172173db054c5359e69) Keep PwNode objects out of the audio panel's Repeater models
- [6e15d76](https://github.com/omacom/omarchy/commit/6e15d76a624762d8332322e3d2cd605f3c56fbbb) Drop key auto-repeat in the lock screen password field
- [8a13eac](https://github.com/omacom/omarchy/commit/8a13eac872988c722be4cb4765211593b61d6de9) Defer to system-auth in the polkit stack written by fingerprint/FIDO2 setup
- [21e7975](https://github.com/omacom/omarchy/commit/21e7975352da486e2ff30820a9abab4c020fa28e) Harden the polkit migration: exact-layout match, retry on failure, and tests
- [6df574c](https://github.com/omacom/omarchy/commit/6df574cbb472340ba55b7c283e1df43466124159) fix(shell): keep __sourceDir on third-party plugin manifests
- [bce0f51](https://github.com/omacom/omarchy/commit/bce0f512e080df078a2c012c2ade7a44e54faa51) Clear setgid when hardening Windows VM directories
- [45fd98f](https://github.com/omacom/omarchy/commit/45fd98f34408e02a0c07da185aeb40e5100246bc) Report why Windows VM directory hardening failed
- [14921a9](https://github.com/omacom/omarchy/commit/14921a956ea998362e82b82fac4b092d9bcdfe02) Treat idle timeout 0 as disabled, not immediate
- [4c5f363](https://github.com/omacom/omarchy/commit/4c5f363df79d7a0b41716912664511b723d86eac) Install lib32 graphics drivers before Steam
- [92f9864](https://github.com/omacom/omarchy/commit/92f9864c72976b388075be4015006296eff40449) Prevent lid closure from interrupting shutdown
- [65883c3](https://github.com/omacom/omarchy/commit/65883c389082650edb14db012466397afff8ac8b) Keep the lib32 driver helper from failing when no GPU is detected
- [eaaca77](https://github.com/omacom/omarchy/commit/eaaca77efb1d1b6cfda37a2b60c6a26772562fd6) Report shutdown failures and test blocked window closing
- [be18b32](https://github.com/omacom/omarchy/commit/be18b324f8e952523a0f94f8357b29e5c7eb5334) Install OpenClaw as the self-updating copy under ~/.openclaw
- [24d591d](https://github.com/omacom/omarchy/commit/24d591da14ca5bbd2013450006f912bdbd502318) Refuse before touching anything, and move an old gateway cleanly
- [44f5fd8](https://github.com/omacom/omarchy/commit/44f5fd8f0e53380cdd360066208ce885b6113364) Stop an old gateway before seeding, and refuse before installing
- [d2305ad](https://github.com/omacom/omarchy/commit/d2305add6a0ff88fe129cb473548f4fa3eceb459) Keep the OpenClaw that can open the state when removal keeps the state
- [8d25d6a](https://github.com/omacom/omarchy/commit/8d25d6aef3cc56df36f26fd5b979d1457aa20daf) Require a moved OpenClaw service to be running again
- [abf2f75](https://github.com/omacom/omarchy/commit/abf2f756f265ece1a9df476d142d3fcd4f6bcbc1) Judge a service by its program, and name any service left stopped
- [91fd24c](https://github.com/omacom/omarchy/commit/91fd24c2b1bc86ea458f0f6a3bf0ac83ab46ef31) Resolve the audio output sink through EasyEffects 8
- [64e102a](https://github.com/omacom/omarchy/commit/64e102aaf2386427a77c323fdabf80ce29566e55) Keep OpenClaw's gateway probes off the wizard's terminal
- [b71b905](https://github.com/omacom/omarchy/commit/b71b905548fd584dda0d23472f81bca4d7676d8d) Revert "Keep OpenClaw's gateway probes off the wizard's terminal"
- [bedc2a3](https://github.com/omacom/omarchy/commit/bedc2a39792d0af05f80446af4806f7482c38327) Keep shutdown worker on the same script path
- [8942b0c](https://github.com/omacom/omarchy/commit/8942b0cd4c249ff760872cb6e96361e84526fd23) Keep a moved OpenClaw gateway on the runtime's own Node
- [72da1ec](https://github.com/omacom/omarchy/commit/72da1ec851132c0ba0d5162c77c78c32ec04674c) Move only services still on the old package's script or Node
- [9f0d464](https://github.com/omacom/omarchy/commit/9f0d4641bd121a9d49a36ef8c9b08e6617f56d21) Know the runtime's OpenClaw by its own script
- [de86454](https://github.com/omacom/omarchy/commit/de8645490b49f6476e53d2526914e2bac9d3d2de) Leave a moved OpenClaw service stopped or disabled if it was
- [9ace84e](https://github.com/omacom/omarchy/commit/9ace84e6c3d47d3a04acdf8ac806837c8adeabbe) Keep OpenClaw's gateway probes off the wizard's terminal
- [92e1a27](https://github.com/omacom/omarchy/commit/92e1a27618d07530bb9dc18437bbe1fdf91a4708) Make the audio row test fail when a row is the node itself
- [a383e3e](https://github.com/omacom/omarchy/commit/a383e3efcb275c5b14018db0e520ea4682bc6b6f) Say what nodeFor resolves a row to after PipeWire recreates its node
- [1095f73](https://github.com/omacom/omarchy/commit/1095f73aa65778800f6b068bbf642f445138efe3) Fix Display panel display toggle using rejected hyprctl keyword
- [199ac6f](https://github.com/omacom/omarchy/commit/199ac6fc282e0b30852f9fa6d2026d7a7cfebcd9) Change the aether nvim part to the omacom org
- [8b4eae6](https://github.com/omacom/omarchy/commit/8b4eae66da2938ba9559f103b18dbf85cdf28a70) Merge pull request #13771 from omacom/fix-aether-nvim-path
- [146fe5d](https://github.com/omacom/omarchy/commit/146fe5d368966560affe3a7e79f64c9c3c366d14) Say only what is true in the __sourceDir comment
- [84e88b4](https://github.com/omacom/omarchy/commit/84e88b4a8e44c33692e3561d3a94f2b2306daa8b) Guard third-party manifests keeping __sourceDir
- [377b15b](https://github.com/omacom/omarchy/commit/377b15be4b4ad7e88a3bac47f49059e45a954644) Don't fire a pending idle action whose timeout was set to 0
- [3839d0b](https://github.com/omacom/omarchy/commit/3839d0b4e0054c292d93ce143f39d91dce88f1dd) Keep a pending idle action on its deadline when the timings change
- [3cebdc3](https://github.com/omacom/omarchy/commit/3cebdc3412e6bb53dbffc57c36edff29b9c0446f) End a running idle cycle when both timeouts are set to 0
- [c05d901](https://github.com/omacom/omarchy/commit/c05d90196fc0dd5c21e2e797d80ffcc60d5e39fa) Switch between several Claude and Codex subscriptions, and build apps the Omarchy way (#13770)
- [f45461a](https://github.com/omacom/omarchy/commit/f45461a38f2b0a12ba39837eb41b08c012051780) Bring Grok up to par with Claude and Codex in the agents panel (#13992)
- [60c7386](https://github.com/omacom/omarchy/commit/60c73865e4732eb8717fae8f960d2c786e8f387d) Rewrite polkit-1 in place with sed -i so an interrupted migration cannot truncate it
- [d95c68f](https://github.com/omacom/omarchy/commit/d95c68f9fbd1d05bad37dfaba5cd62bfdf72833d) Match only active include lines when deciding polkit-1 is already fixed
- [821ae58](https://github.com/omacom/omarchy/commit/821ae589059ffdadc970315f866c94b55d268af7) Reorder the agents in the panel, count Grok's tokens, and install Grok through mise (#14004)
- [75250d3](https://github.com/omacom/omarchy/commit/75250d37acdf19121efe2af85b3732b8cf248980) Fix Codex limits, Claude counting, and agent usage reliability from community PRs (#14049)
- [0537ae1](https://github.com/omacom/omarchy/commit/0537ae121b7a777db1c705649216580a2fb41ea8) Merge pull request #11925 from joewinke/fix/plugin-thirdparty-sourcedir
- [a85e29a](https://github.com/omacom/omarchy/commit/a85e29abb556816f4644cf975e98da694b486aa8) Merge pull request #13296 from omacom/openclaw-self-updating
- [357d84f](https://github.com/omacom/omarchy/commit/357d84f17a8c6d133ee201a44ea6563204930a8e) Follow EasyEffects' links to Bluetooth sinks too
- [63c31bc](https://github.com/omacom/omarchy/commit/63c31bc68e9a1f1a2fdee82024e092568510a94b) Give the audio output sink test the standard header
- [2ba1015](https://github.com/omacom/omarchy/commit/2ba1015ef26486b940c68943e72295329856e0ce) Keep image picker work bounded for large theme collections
- [a8e09b9](https://github.com/omacom/omarchy/commit/a8e09b9ce2938bdab35e4bd7e827adcd0765c1c2) Keep refreshed image picker selection inside the active filter
- [520e4bc](https://github.com/omacom/omarchy/commit/520e4bca5bd0bc7388357b8bcfe50d14f70ee388) Retain lazy thumbnail jobs across concurrent refreshes
- [e0b0f34](https://github.com/omacom/omarchy/commit/e0b0f349f8717fdbbc1a19aede53e2331b1381ca) Escape the output name in the Display panel's hl.monitor eval
- [393a43d](https://github.com/omacom/omarchy/commit/393a43d469d2256f517cdce3b4f74115daed929a) Pin root= before the packages that can drop it (#6951)
- [dccd88b](https://github.com/omacom/omarchy/commit/dccd88b6c97f3b7b8ae6168bd110a872237bf673) Merge pull request #14117 from keylimesoda/fix/image-picker-large-collections
- [e5663c7](https://github.com/omacom/omarchy/commit/e5663c7e3a3bed93db557d7ab218d3aa46f27014) Keep image picker previews sharp on HiDPI displays
- [8e02fc8](https://github.com/omacom/omarchy/commit/8e02fc84f5bdc511ed102e2a14f8935bba4f92bd) Merge pull request #14156 from bjarneo/fix/image-picker-hidpi
- [1832855](https://github.com/omacom/omarchy/commit/18328559b9e2f283b4272f034689e3166ddf62a6) Keep the Wi-Fi icon steady on OWE transition-mode networks (#14133)
- [75b327b](https://github.com/omacom/omarchy/commit/75b327bc28dcb8bf4fe1df2aa1495384168b9242) Apply the system keyboard layout to the SDDM greeter (#6896)
- [5c4da02](https://github.com/omacom/omarchy/commit/5c4da021469517449770579793b37ce26d0a0d48) Merge pull request #7783 from omacom/fix/issue-6952
- [1f100bd](https://github.com/omacom/omarchy/commit/1f100bdf3fc43fcc7c2576348ac3b099f1763b64) Stop advertising forced user-setup reruns (#14194)
- [d21e581](https://github.com/omacom/omarchy/commit/d21e5810b19ab17055c5a7ce74df38fe446f85ad) Reset elapsed agent usage and show stale ages on hover
- [6809987](https://github.com/omacom/omarchy/commit/68099878922c0168315552f982b55979f333166a) Align panel underlines with native bar icons
- [7f91a8d](https://github.com/omacom/omarchy/commit/7f91a8d49edbcc0a50f2e49eb2819aa0be6a8ce9) Show recovery guidance when paused usage has no cache
- [4a568a1](https://github.com/omacom/omarchy/commit/4a568a138840943a69f277951f4b10cf007a0217) Merge pull request #14225 from omacom/fix/agents-usage-display
- [cb865c2](https://github.com/omacom/omarchy/commit/cb865c2fa4779b2176a18bd2385e92c390ef11b2) Merge pull request #9873 from Wheel-Smith/fix/polkit-faillock-system-auth
- [58aa857](https://github.com/omacom/omarchy/commit/58aa85721dd50b0fb5d8273ceb3a0fd1e70250ca) Merge pull request #13076 from chemineer1/codex/shutdown-lid-inhibit
- [ea5e438](https://github.com/omacom/omarchy/commit/ea5e438f4f989ad07f5ebed54f7d6547e876762c) Merge pull request #13396 from stefanoverna/easyeffects-sink-resolver
- [7901d7d](https://github.com/omacom/omarchy/commit/7901d7d0b6f80530e10b4be560f9eae1bcff1524) Merge pull request #12538 from paulogeyer/fix/10860-idle-timeout-zero
- [35a0d59](https://github.com/omacom/omarchy/commit/35a0d59053f57b097c7398dabab5cb3208766862) Merge pull request #12323 from atoslins/fix-windows-vm-setgid
- [00cee6d](https://github.com/omacom/omarchy/commit/00cee6d319bffd883814ab9d2d2a02cf8978ca58) Merge pull request #7806 from berndb/lock-ignore-autorepeat
- [dda5b40](https://github.com/omacom/omarchy/commit/dda5b40820d61eefee28d9acb37171d54896a45a) Merge pull request #12569 from selfcrypto/install-gpu-drivers-before-steam
- [2b2d462](https://github.com/omacom/omarchy/commit/2b2d462652f2789668a8252724be16f4f6c6ae84) Merge pull request #13725 from houz42/fix/monitor-panel-display-toggle
- [454b67d](https://github.com/omacom/omarchy/commit/454b67d95fd63c269c5315836a098038a0c61716) Fix the bar startup stall and the shell restart race (#11015)
