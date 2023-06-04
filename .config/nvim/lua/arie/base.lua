vim.cmd("autocmd!")
local opt = vim.opt -- for conciseness

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

-- gui cursor
opt.guicursor = ""

-- line numbers
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.ai = true -- Auto indent
opt.autoindent = true
opt.breakindent = true
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.smarttab = true

-- line wrapping
opt.wrap = false

-- search settings
opt.hlsearch = false
opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
opt.smartcase = true

-- fold
opt.foldlevel = 20
opt.foldlevelstart = 999
opt.foldenable = true
-- opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
opt.foldcolumn = '1'

-- term gui
opt.termguicolors = true

-- scroll
opt.scrolloff = 8
opt.signcolumn = 'yes'
opt.isfname:append("@-@")

opt.updatetime = 50

opt.swapfile = false
opt.backspace = { 'start', 'eol', 'indent' }
opt.backup = false
opt.backupskip = { '/tmp/*', '/private/tmp/*' }
opt.cmdheight = 1
opt.inccommand = 'split'
opt.iskeyword:append("-")
opt.laststatus = 2
opt.path:append { '**' } -- Finding files - Search down into subfolders
opt.shell = 'zsh'
opt.showcmd = true
opt.title = true
opt.wildignore:append { '*/node_modules/*' }
opt.modifiable = true

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
