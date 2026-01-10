local opt = vim.opt

-- cmds
vim.cmd(":hi statusline guibg=NONE")

-- Basic settings
opt.number = true -- Line numbers
opt.relativenumber = true -- Relative line numbers
opt.cursorline = true -- Highlight current line
opt.wrap = false -- Don't wrap lines
opt.scrolloff = 10 -- Keep 10 lines above/below cursor
opt.sidescrolloff = 8 -- Keep 8 columns left/right of cursor

-- Indentation
opt.tabstop = 2 -- Tab width
opt.shiftwidth = 2 -- Indent width
opt.softtabstop = 2 -- Soft tab stop
opt.expandtab = true -- Use spaces instead of tabs
opt.smartindent = true -- Smart auto-indenting
opt.autoindent = true -- Copy indent from current line

-- Search settings
opt.ignorecase = true -- Case insensitive search
opt.smartcase = true -- Case sensitive if uppercase in search
opt.hlsearch = true -- Don't highlight search results
opt.incsearch = true -- Show matches as you type

-- Visual settings
opt.termguicolors = true -- Enable 24-bit colors
opt.signcolumn = "yes" -- Always show sign column
opt.showmatch = true -- Highlight matching brackets
opt.matchtime = 2 -- How long to show matching bracket
opt.cmdheight = 1 -- Command line height
opt.completeopt = "menuone,noinsert,noselect" -- Completion options
opt.showmode = false -- Don't show mode in command line
opt.pumheight = 10 -- Popup menu height
opt.pumblend = 10 -- Popup menu transparency
opt.winblend = 0 -- Floating window transparency
opt.conceallevel = 0 -- Don't hide markup
opt.concealcursor = "" -- Don't hide cursor line markup
opt.lazyredraw = true -- Don't redraw during macros
opt.synmaxcol = 300 -- Syntax highlighting limit

-- File handling
opt.backup = false -- Don't create backup files
opt.writebackup = false -- Don't create backup before writing
opt.swapfile = false -- Don't create swap files
opt.undofile = true -- Persistent undo
opt.undodir = vim.fn.expand("~/.vim/undodir") -- Undo directory
opt.updatetime = 300 -- Faster completion
opt.timeoutlen = 500 -- Key timeout duration
opt.ttimeoutlen = 0 -- Key code timeout
opt.autoread = true -- Auto reload files changed outside vim
opt.autowrite = false -- Don't auto save

-- Behavior settings
opt.hidden = true -- Allow hidden buffers
opt.errorbells = false -- No error bells
opt.backspace = "indent,eol,start" -- Better backspace behavior
opt.autochdir = false -- Don't auto change directory
opt.iskeyword:append("-") -- Treat dash as part of word
opt.path:append("**") -- include subdirectories in search
opt.selection = "inclusive" -- Selection behavior
opt.mouse = "a" -- Enable mouse support
opt.clipboard:append("unnamedplus") -- Use system clipboard
opt.modifiable = true -- Allow buffer modifications
opt.encoding = "UTF-8" -- Set encoding
vim.opt.guicursor = "n-v-c:block,i:ver25,r-cr-o:block" -- cursor look settings

-- Split behavior
opt.splitbelow = true -- Horizontal splits go below
opt.splitright = true -- Vertical splits go right

-- Better diff options
opt.diffopt:append("linematch:60")

-- Performance improvements
opt.redrawtime = 10000
opt.maxmempattern = 20000
