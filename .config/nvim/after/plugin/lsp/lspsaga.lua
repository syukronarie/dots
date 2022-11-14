local status, saga = pcall(require, "lspsaga")
if not status then
  return
end

saga.init_lsp_saga({
  server_filetype_map = {
    typescript = "typescript",
    javascript = "javascript",
  },
})

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap("n", "<C-k>", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts)
keymap("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
keymap("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
keymap("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
keymap("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", { silent = true })
keymap({ "n", "v" }, "<C-space>", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap("n", "gt", "<cmd>Lspsaga open_floaterm<CR>", { silent = true })
keymap("n", "gt", "<cmd>Lspsaga open_floaterm gitui<CR>", { silent = true })
keymap("t", "gt", [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })
