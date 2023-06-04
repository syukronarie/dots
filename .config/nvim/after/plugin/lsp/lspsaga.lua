local status, saga = pcall(require, "lspsaga")
if not status then
  return
end


saga.setup({
  server_filetype_map = {
    typescript = "typescript",
    javascript = "javascript",
    clang = "clang",
    cpp = "clang"
  },
  ui = {
    -- Currently, only the round theme exists
    theme = "round",
    -- This option only works in Neovim 0.9
    title = true,
    -- Border type can be single, double, rounded, solid, shadow.
    border = "rounded",
    winblend = 0,
    expand = "",
    collapse = "",
    preview = " ",
    code_action = "💡",
    diagnostic = "🐞",
    incoming = " ",
    outgoing = " ",
    hover = ' ',
    kind = {},
  },
  preview = {
    lines_above = 0,
    lines_below = 20,
  },
})

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("i", "<C-k>", "<Cmd>Lspsaga signature_help<CR>", opts)
keymap("n", "<C-j>", "<Cmd>Lspsaga diagnostic_jump_next<CR>", opts)
keymap("n", "<C-k>", "<Cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "H", "<Cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "gf", "<Cmd>Lspsaga lsp_finder<CR>", opts)
keymap("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
keymap("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)
keymap("n", "gt", "<cmd>Lspsaga term_toggle<CR>", { silent = true })
keymap({ "n", "v" }, "<C-space>", "<cmd>Lspsaga code_action<CR>", { silent = true })
keymap("n", "<leader>o", "<cmd>LSoutlineToggle<CR>", { silent = true })
keymap("n", "<leader>gt", "<cmd>Lspsaga term_toggle lazygit<CR>", { silent = true })
keymap("t", "q", [[<C-\><C-n><cmd>Lspsaga term_toggle<CR>]], { silent = true })
