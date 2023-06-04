vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jj", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set('n', 'x', '"_x')
keymap.set('n', '<enter>', 'j')

-- Increment/decrement
keymap.set('n', '+', '<C-a>')
keymap.set('n', '-', '<C-x>')

-- Delete a word backwards
keymap.set('n', 'dw', 'vb"_d')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- line management
keymap.set('n', 'J', ':m +1<CR>')
keymap.set('n', 'K', ':m -2<CR>')

-- window management
keymap.set("n", "te", ":NvimTreeClose<bar> bd<CR>")
keymap.set("n", "to", ":tabnew<CR>")
keymap.set("n", "tx", ":tabclose<CR>")
keymap.set("n", "tn", ":tabn<CR>")
keymap.set("n", "tp", ":tabp<CR>")
keymap.set("n", "<C-k>u", ":NvimTreeClose<bar>bufdo bd<bar>:Alpha<CR>")
keymap.set("n", "<C-k><C-w>", ":NvimTreeClose<bar>bd<CR>")

-- Split window
keymap.set('n', 'ss', ':split<Return><C-w>w')
keymap.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Resize window
keymap.set('n', '<C-h>', '<C-w><')
keymap.set('n', '<C-l>', '<C-w>>')

---------------------
-- Plugin Keybinds
---------------------

-- vim-maximizer
keymap.set("n", "<C-m>", ":MaximizerToggle<cr> || :MaximizerToggle<cr>gv")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>") -- toggle file explorer

-- telescope
keymap.set("n", "sf", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
