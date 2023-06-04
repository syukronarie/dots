vim.g.mapleader = " "

-- general keymaps
vim.keymap.set("i", "jj", "<ESC>")
vim.keymap.set("i", "<C-c>", "<ESC>")
vim.keymap.set("n", "<leader>nh", ":nohl<CR>")
vim.keymap.set('n', 'x', '"_x')
vim.keymap.set('n', '<enter>', 'j')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
vim.keymap.set('n', 'J', 'mzJ`z')

-- greatest remap ever
vim.keymap.set('x', "<leader>p", '\"_dP')

-- next greatest remap ever : asbjornHaland
vim.keymap.set('n', 'Y', 'y$')
vim.keymap.set('n', "<leader>y", '\"+y')
vim.keymap.set('v', "<leader>y", '\"+y')
vim.keymap.set('n', "<leader>Y", '\"+Y')

vim.keymap.set('n', "<leader>d", '\"_d')
vim.keymap.set('v', "<leader>d", '\"_d')

vim.keymap.set('n', 'Q', '<nop>')

-- Increment/decrement
vim.keymap.set('n', '+', '<C-a>')
vim.keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
vim.keymap.set('n', 'dw', 'vb"_d')

-- Select all
vim.keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- line management
vim.keymap.set('n', 'J', ':m +1<CR>')
vim.keymap.set('n', 'K', ':m -2<CR>')

-- window management
vim.keymap.set("n", "te", ":NvimTreeClose<bar> bd<CR>")
vim.keymap.set("n", "to", ":tabnew<CR>")
vim.keymap.set("n", "tx", ":tabclose<CR>")
vim.keymap.set("n", "tn", ":tabn<CR>")
vim.keymap.set("n", "tp", ":tabp<CR>")
vim.keymap.set("n", "<C-k>u", ":NvimTreeClose<bar>bufdo bd<bar>:Alpha<CR>")
vim.keymap.set("n", "<C-k><C-w>", ":NvimTreeClose<bar>bd<CR>")

-- Split window
vim.keymap.set('n', 'ss', ':split<Return><C-w>w')
vim.keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Resize window
vim.keymap.set('n', '<C-h>', '<C-w><')
vim.keymap.set('n', '<C-l>', '<C-w>>')

-- replace word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- create executable file
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

---------------------
-- Plugin Keybinds
---------------------

-- vim-maximizer
vim.keymap.set("n", "<C-m>", ":MaximizerToggle<cr> || :MaximizerToggle<cr>gv")

-- nvim-tree
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>") -- toggle file explorer

-- telescope
vim.keymap.set("n", "sf", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
vim.keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
vim.keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
vim.keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status] -- it is conflict with tpope/fugitive

-- restart lsp server (not on youtube nvim video)
vim.keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
