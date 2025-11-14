# CHANGELOG

Please refer to [.config/standard.tpl.md](./.chglog/standard.tpl.md) for the CHANGELOG template.



<a name="v0.7.0"></a>
## [v0.7.0](https://github.com/gridsystem/nvim/compare/v0.6.0...v0.7.0) (2025-11-14)

### Feat

* Add live update support for when open files are written to e.g. by cursor-agent cli


<a name="v0.6.0"></a>
## [v0.6.0](https://github.com/gridsystem/nvim/compare/v0.5.0...v0.6.0) (2025-10-09)

### Feat

* Update repo-tools version

### Fix

* **neotree:** Fix an issue caused by opening when space char is in path


<a name="v0.5.0"></a>
## [v0.5.0](https://github.com/gridsystem/nvim/compare/v0.4.0...v0.5.0) (2025-05-30)

### Feat

* Update gitsigns


<a name="v0.4.0"></a>
## [v0.4.0](https://github.com/gridsystem/nvim/compare/v0.3.1...v0.4.0) (2025-05-21)

### Chore

* Remove unused local variable

### Feat

* Disable system clipboard integration

* **neotree:** Show all files, but hide specific useless ones


<a name="v0.3.1"></a>
## [v0.3.1](https://github.com/gridsystem/nvim/compare/v0.3.0...v0.3.1) (2025-05-19)

### Fix

* **telescope:** Fix syntax error in telescope config


<a name="v0.3.0"></a>
## [v0.3.0](https://github.com/gridsystem/nvim/compare/v0.2.1...v0.3.0) (2025-05-19)

### Feat

* Add custom copilot-chat system prompt

* Add upstream merge guide to readme

* Comment out guess-indent plugin

* switch vim-sleuth for guess-indent.nvim ([#1512](https://github.com/gridsystem/nvim/issues/1512))

* **plugins:** Update plugins

### Fix

* rename vim.highlight.on_yank to vim.hl.on_yank ([#1482](https://github.com/gridsystem/nvim/issues/1482))

* **lsp:** Remove deprecated Mason :get_install_path for loading vue language server

### Pull Requests

* Merge pull request [#2](https://github.com/gridsystem/nvim/issues/2) from gridsystem/merge/upstream


<a name="v0.2.1"></a>
## [v0.2.1](https://github.com/gridsystem/nvim/compare/v0.2.0...v0.2.1) (2025-05-05)

### Feat

* **deps:** Update repo-tools version


<a name="v0.2.0"></a>
## [v0.2.0](https://github.com/gridsystem/nvim/compare/v0.1.0...v0.2.0) (2025-05-05)

### Feat

* Add CSS language server and ensure web dev treesitter parsers


<a name="v0.1.0"></a>
## v0.1.0 (2025-05-04)

### Chore

* fix typo in bug report issue template ([#1306](https://github.com/gridsystem/nvim/issues/1306))

* remove redundant comment ([#1307](https://github.com/gridsystem/nvim/issues/1307))

* add pre-issue requirements ([#1288](https://github.com/gridsystem/nvim/issues/1288))

* rename <C-T> to <C-t> for consistency ([#719](https://github.com/gridsystem/nvim/issues/719))

* link new installation youtube video ([#678](https://github.com/gridsystem/nvim/issues/678))

* remove trailing spaces from readme ([#679](https://github.com/gridsystem/nvim/issues/679))

* fix typos ([#666](https://github.com/gridsystem/nvim/issues/666))

* **docs:** Update README.md ([#1344](https://github.com/gridsystem/nvim/issues/1344))

### Docs

* clarify using opts = {} vs config = function() ... require('plu… ([#1316](https://github.com/gridsystem/nvim/issues/1316))

* fix misstype on README.md

* remove archive installation

* restructure README

* Update README.md 📚

* change telescope fzf native to lazy syntax ([#185](https://github.com/gridsystem/nvim/issues/185))

### Feat

* Configure wildmenu/cmdline to have same keybindings as blink-cmp

* Remove autocmd for closing Neotree if it's the last buffer, use built in option

* Add repo-tools submodule for pre-commit hooks

* Show error messages before git blame

* Configure fuzzy file contents search

* Consistent tab accept autocomplete, <C-y> accept copilot suggestion, <C-k>/<C-j> for up/down

* Use neotree toggle instead of reveal

* Switch to super-tab for blink-cmp completion map

* Remove specific window width for copilot as it's automatic now

* Resize windows when toggling copilot

* Change telescope live grep keymap to <C-f>

* Show name of mode in ShowAllMaps instead of shortened map name e.g. Insert instead of i

* Greatly expand on ShowAllMaps to include default commands in :help

* Resize windows when opening and closing Neotree

* Update plugins

* Add toggle keymap for :CopilotChatToggle

* More tweaks to autocompletion

* Add completeopt for autocompletion popup and compatibility with copilot-chat

* Commit newly installed and updated plugins to lazy-lock.json

* Configure which session options are saved in a session for :ReloadConfig

* Add CopilotChat.nvim

* Save cursor position when closing a file and restore when next opening

* Auto-close Neotree when it's the only window left in the tab

* Add a command to find mappings for any key or key combo

* Add a better :ReloadConfig command

* Show a "Do you want to save?" when navigating away from a buffer

* Stop neovim from preserving undo history from earlier than a file was opened

* Disable conform autoformatting

* Configure Tabby

* Add custom keymaps to Telescope

* Configure Neotree

* Add TS+Vue language servers

* Configure indent-blankline

* Configure gitsigns

* Configure catppuccin theme options

* Change autocompletion map

* Misc changes to options

* Tidy up neo-tree config

* Enable autopairs

* Remove tokyonight theme package

* Disable vim-sleuth to stop guessing tab characters

* Add indent-blankline

* Add catppuccin theme

* Add a ReloadConfig command

* Install and configure neo-tree to have nerdtree keybindings

* switch nvim-cmp for blink.cmp ([#1426](https://github.com/gridsystem/nvim/issues/1426))

* add `vim.opt.confirm = true` ([#1384](https://github.com/gridsystem/nvim/issues/1384))

* add basic function signature help ([#1358](https://github.com/gridsystem/nvim/issues/1358))

* Change to prepare for upcoming deprecation of configuring diagnostic-signs using sign_define() ([#1232](https://github.com/gridsystem/nvim/issues/1232))

* update references of tsserver to ts_ls ([#1131](https://github.com/gridsystem/nvim/issues/1131))

* add linter plugin ([#699](https://github.com/gridsystem/nvim/issues/699))

* allow treesitter defaults to be overwritten from custom directory ([#732](https://github.com/gridsystem/nvim/issues/732))

* use VimEnter event instead of VeryLazy ([#673](https://github.com/gridsystem/nvim/issues/673))

* enable lua lsp snipppets ([#660](https://github.com/gridsystem/nvim/issues/660))

* added contexts for code action - source fix-all errors ([#599](https://github.com/gridsystem/nvim/issues/599))

* Add clipboard sync by default ([#166](https://github.com/gridsystem/nvim/issues/166))

* move to lazy.nvim package manager and add first plugins ([#178](https://github.com/gridsystem/nvim/issues/178))

* **cmp:** path completion feature ([#536](https://github.com/gridsystem/nvim/issues/536))

* **diagnostic:** add diagnostic config ([#1335](https://github.com/gridsystem/nvim/issues/1335))

* **keymap:** move windows without `<C-w>` ([#1368](https://github.com/gridsystem/nvim/issues/1368))

* **lsp:** use Telescope builtin functions for LSP definition and type definition

### Fix

* debug.lua ([#918](https://github.com/gridsystem/nvim/issues/918))

* use correct github abmonition syntax ([#1414](https://github.com/gridsystem/nvim/issues/1414))

* move the Mason setup time forward from before ([#210](https://github.com/gridsystem/nvim/issues/210))

* minor misspellings ([#1450](https://github.com/gridsystem/nvim/issues/1450))

* highlight group clear on each attach ([#874](https://github.com/gridsystem/nvim/issues/874))

* regression introduced in db78c0b217fd9525e2cbcbffd18abbbbddc75b2e ([#1367](https://github.com/gridsystem/nvim/issues/1367))

* arguments for the `vim.lsp.Client.supports_method` method ([#1356](https://github.com/gridsystem/nvim/issues/1356))

* prevent mason setup from being run twice ([#1298](https://github.com/gridsystem/nvim/issues/1298))

* Show modes in correct order and fix typing of success in ShowAllMaps

* which-key comment typo ([#1227](https://github.com/gridsystem/nvim/issues/1227))

* update lazy uninstall information link ([#1148](https://github.com/gridsystem/nvim/issues/1148))

* restore Mason config timing for DAP startup (again) ([#865](https://github.com/gridsystem/nvim/issues/865))

* add required parsers from nvim-treesitter

* syntax highlights tree-sitter - `navarasu/onedark.nvim` support both API TS* and the new one @* - `mjlbach/onedark.nvim` is archived and not support new syntax

* Fix a bug where autocmd would unintentionally close neo-tree.lua

* Change copilot binding to <C-c> so that <C-g> still shows filename and path

* remove deprecated opt for conform.nvim ([#1070](https://github.com/gridsystem/nvim/issues/1070))

* disable ts indenting for Ruby

* checkhealth reported nvim version ([#685](https://github.com/gridsystem/nvim/issues/685))

* add note in readme for custom plugins

* incorrect reference to init.lua in README.md

* restore mason config timing for dap startup ([#555](https://github.com/gridsystem/nvim/issues/555))

* use :TSInstall on build with nvim-treesitter ([#261](https://github.com/gridsystem/nvim/issues/261))

* fix indent-blankline config

* don't check third party for Lua LSP ([#57](https://github.com/gridsystem/nvim/issues/57))

* missing comma

* fix brackets

* **auto-completion:** ensure first menu item is selected by default

* **docs:** update windows path to a correct folder

* **gitsigns:** make visual mode descriptions consistent with normal mode ([#1266](https://github.com/gridsystem/nvim/issues/1266))

* **init:** turn telescope-fzf-native into a dependecy

* **init.lua:** indent blankline v3 setup

* **lazy:** added error handling for bootstrap ([#1001](https://github.com/gridsystem/nvim/issues/1001))

### Refactor

* update treesitter and which-key config ([#1068](https://github.com/gridsystem/nvim/issues/1068))

* remove lazydev and luvit-meta as lsp dependencies ([#1047](https://github.com/gridsystem/nvim/issues/1047))

### Reverts

* Refactor theme and status line into their own file

### Pull Requests

* Merge pull request [#505](https://github.com/gridsystem/nvim/issues/505) from j-hui/update-fidget
* Merge pull request [#502](https://github.com/gridsystem/nvim/issues/502) from ShashwatAgrawal20/item-selection
* Merge pull request [#495](https://github.com/gridsystem/nvim/issues/495) from dam9000/pr-minor-cleanup
* Merge pull request [#494](https://github.com/gridsystem/nvim/issues/494) from slara/master
* Merge pull request [#492](https://github.com/gridsystem/nvim/issues/492) from slara/master
* Merge pull request [#485](https://github.com/gridsystem/nvim/issues/485) from n-a11s/patch-1
* Merge pull request [#486](https://github.com/gridsystem/nvim/issues/486) from dam9000/pr-faq-single-file
* Merge pull request [#480](https://github.com/gridsystem/nvim/issues/480) from dam9000/pr-faq-appname
* Merge pull request [#479](https://github.com/gridsystem/nvim/issues/479) from dam9000/update-readme-lazy-sync
* Merge pull request [#467](https://github.com/gridsystem/nvim/issues/467) from theopn/master
* Merge pull request [#462](https://github.com/gridsystem/nvim/issues/462) from Alvaro-Kothe/fix-help-ibl
* Merge pull request [#452](https://github.com/gridsystem/nvim/issues/452) from AshrafMichail23/fix_bash_errors
* Merge pull request [#458](https://github.com/gridsystem/nvim/issues/458) from pedrosantayana/master
* Merge pull request [#456](https://github.com/gridsystem/nvim/issues/456) from goatfiles/fix-diagnostic-errors
* Merge pull request [#455](https://github.com/gridsystem/nvim/issues/455) from Anthony-Fiddes/fix-mason-setup
* Merge pull request [#448](https://github.com/gridsystem/nvim/issues/448) from AshrafMichail23/main
* Merge pull request [#438](https://github.com/gridsystem/nvim/issues/438) from tcld/which_key_documentation
* Merge pull request [#446](https://github.com/gridsystem/nvim/issues/446) from lukas-reineke/fix-indent-blankline
* Merge pull request [#443](https://github.com/gridsystem/nvim/issues/443) from emmanuelchucks/patch-1
* Merge pull request [#442](https://github.com/gridsystem/nvim/issues/442) from Anthony-Fiddes/add-lazy-lock
* Merge pull request [#436](https://github.com/gridsystem/nvim/issues/436) from Chris-Gillis/telescope-config-typo-fix
* Merge pull request [#422](https://github.com/gridsystem/nvim/issues/422) from saccarosium/master
* Merge pull request [#420](https://github.com/gridsystem/nvim/issues/420) from saccarosium/master
* Merge pull request [#404](https://github.com/gridsystem/nvim/issues/404) from e-aakash/lsp-goto-implementation
* Merge pull request [#406](https://github.com/gridsystem/nvim/issues/406) from gangelop/git-keymaps
* Merge pull request [#419](https://github.com/gridsystem/nvim/issues/419) from dilshod/patch-1
* Merge pull request [#410](https://github.com/gridsystem/nvim/issues/410) from gangelop/TSInstall-javascript
* Merge pull request [#402](https://github.com/gridsystem/nvim/issues/402) from ErikKarlgren/fix-readme-typo
* Merge pull request [#395](https://github.com/gridsystem/nvim/issues/395) from smiggiddy/smiggiddy-patch-1
* Merge pull request [#387](https://github.com/gridsystem/nvim/issues/387) from daanrongen/master
* Merge pull request [#384](https://github.com/gridsystem/nvim/issues/384) from pbnj/fix/telescope-fzf-native-as-dependency
* Merge pull request [#380](https://github.com/gridsystem/nvim/issues/380) from eltociear/patch-1
* Merge pull request [#376](https://github.com/gridsystem/nvim/issues/376) from Numkil/patch-bug
* Merge pull request [#373](https://github.com/gridsystem/nvim/issues/373) from Numkil/patch-1
* Merge pull request [#369](https://github.com/gridsystem/nvim/issues/369) from Dennis-Rall/patch-2
* Merge pull request [#367](https://github.com/gridsystem/nvim/issues/367) from sevensidedmarble/remove-timeout
* Merge pull request [#357](https://github.com/gridsystem/nvim/issues/357) from kdheepak/patch-1
* Merge pull request [#358](https://github.com/gridsystem/nvim/issues/358) from kdheepak/patch-2
* Merge pull request [#362](https://github.com/gridsystem/nvim/issues/362) from andres-lowrie/patch-1
* Merge pull request [#344](https://github.com/gridsystem/nvim/issues/344) from MariaSolOs/deprecated-stylua
* Merge pull request [#346](https://github.com/gridsystem/nvim/issues/346) from juangiordana/debug
* Merge pull request [#347](https://github.com/gridsystem/nvim/issues/347) from ilian/patch-1
* Merge pull request [#342](https://github.com/gridsystem/nvim/issues/342) from gfaster/master
* Merge pull request [#337](https://github.com/gridsystem/nvim/issues/337) from nvim-lua/enable_python_indent
* Merge pull request [#323](https://github.com/gridsystem/nvim/issues/323) from luizcalliari/master
* Merge pull request [#327](https://github.com/gridsystem/nvim/issues/327) from kaminskypavel/patch-1
* Merge pull request [#326](https://github.com/gridsystem/nvim/issues/326) from kaminskypavel/patch-1
* Merge pull request [#319](https://github.com/gridsystem/nvim/issues/319) from mech-a/readme
* Merge pull request [#318](https://github.com/gridsystem/nvim/issues/318) from mech-a/is311
* Merge pull request [#310](https://github.com/gridsystem/nvim/issues/310) from mech-a/master
* Merge pull request [#296](https://github.com/gridsystem/nvim/issues/296) from SamPosh/patch-3
* Merge pull request [#203](https://github.com/gridsystem/nvim/issues/203) from luizcalliari/master
* Merge pull request [#302](https://github.com/gridsystem/nvim/issues/302) from mech-a/mech-a-patch-1
* Merge pull request [#303](https://github.com/gridsystem/nvim/issues/303) from declan-whiting/get_query_is_deprecated
* Merge pull request [#289](https://github.com/gridsystem/nvim/issues/289) from victorwallsten/master
* Merge pull request [#288](https://github.com/gridsystem/nvim/issues/288) from sumanth-lingappa/master
* Merge pull request [#283](https://github.com/gridsystem/nvim/issues/283) from nPHYN1T3/master
* Merge pull request [#287](https://github.com/gridsystem/nvim/issues/287) from keiwanjamaly/master
* Merge pull request [#282](https://github.com/gridsystem/nvim/issues/282) from liepieshov/master
* Merge pull request [#281](https://github.com/gridsystem/nvim/issues/281) from SamPosh/dapui_toggle

### 


`config = true`)
* once in the `config` function we define for `nvim-lspconfig`

Calling setup twice can cause issues with, e.g., setting the `PATH`
option: you might append Mason's bin dir in one setup call and prepend
it in the other.

We've kept the setup of `mason` in the `nvim-lspconfig` dependencies
table since leaving it to the `config` function caused some
plugin-loading-order related issues in the past. See:
* https://github.com/nvim-lua/kickstart.nvim/pull/210
* https://github.com/nvim-lua/kickstart.nvim/issues/554
* https://github.com/nvim-lua/kickstart.nvim/pull/555
* https://github.com/nvim-lua/kickstart.nvim/pull/865

* docs: tweak comments per review feedback

