local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  ensure_installed = { "c", "cpp", "lua", "rust", "javascript", "typescript" },
  highlight = {
    enable = true,
    disable = { "" },
    additional_vim_regex_highlighting = true
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<leader>v",
      scope_incremental = "<leader>v",
      node_incremental = "<TAB>",
      node_decremental = "<S-TAB>",
    },
  },
  indent = { enable = true, disable = { "yaml" } },
  matchup = { enable = true },
  autopairs = { enable = true },
  playground = {
    enable = true,
    updatetime = 25,
    persist_queries = false,
    keybindings = {
      toggle_query_editor = "o",
      toggle_hl_groups = "i",
      toggle_injected_languages = "t",
      toggle_anonymous_nodes = "a",
      toggle_language_display = "I",
      focus_language = "f",
      unfocus_language = "F",
      update = "R",
      goto_node = "<cr>",
      show_help = "?",
    },
  },
  rainbow = {
    enable = true, -- my default preference for rainbow is false
    extended_mode = false, -- Highlight also non-parentheses delimiters
    max_file_lines = nil,
    colors = {
      "#000",
      "#000",
      "#000",
      "#fff",
      "#fff",
      "#fff",
      "#fff",
    },
    termcolors = {
      "Green",
      "Yellow",
      "Blue",
      "Magenta",
      "Cyan",
      "White",
      "Red",
    },
  },
  refactor = {
    smart_rename = { enable = true, keymaps = { smart_rename = "grr" } },
    highlight_definitions = { enable = true },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition_lsp_fallback = "gnd",
        -- use telescope for these lists
        -- list_definitions = "gnD",
        -- list_definitions_toc = "gO",
        -- @TODOUA: figure out if I need both below
        goto_next_usage = "<a-*>", -- is this redundant?
        goto_previous_usage = "<a-#>", -- also this one?
      },
    },
    -- highlight_current_scope = {enable = true}
  },
  textobjects = {
    lsp_interop = {
      enable = true,
      border = "none",
      peek_definition_code = {
        ["df"] = "@function.outer",
        ["dF"] = "@class.outer",
      },
    },
    move = {
      enable = true,
      set_jumps = true, -- whether to set jumps in the jumplist
      goto_next_start = {
        ["]m"] = "@function.outer",
        ["]]"] = "@call.outer",
      },
      goto_next_end = {
        ["]M"] = "@function.outer",
        ["]["] = "@call.outer",
      },
      goto_previous_start = {
        ["[m"] = "@function.outer",
        ["[["] = "@call.outer",
      },
      goto_previous_end = {
        ["[M"] = "@function.outer",
        ["[]"] = "@call.outer",
      },
    },
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@call.outer",
        ["ic"] = "@call.inner",
      },
    },
    swap = {
      enable = true,
      swap_next = {
        [",a"] = "@parameter.inner",
      },
      swap_previous = {
        [",A"] = "@parameter.inner",
      },
    },
  },
}

-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
