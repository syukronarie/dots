-- auto install packer if not installed
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[ 
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'lewis6991/impatient.nvim'
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'MunifTanjim/prettier.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }

  use 'glepnir/lspsaga.nvim' -- LSP UIs
  use {
    "ray-x/lsp_signature.nvim",
  }

  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use {
    "SmiteshP/nvim-navic",
    requires = "neovim/nvim-lspconfig"
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
  }
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'nvim-treesitter/playground'

  use 'deoplete-plugins/deoplete-clang'

  use 'mg979/vim-visual-multi'
  use({
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
    config = function()
      require('cokeline').setup()
    end
  })
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'
  use 'folke/zen-mode.nvim'
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'akinsho/nvim-bufferline.lua'
  use 'lunarvim/colorschemes' -- A bunch of colorschemes you can try out
  use 'severin-lemaignan/vim-minimap'
  -- use 'github/copilot.vim'

  use 'nvim-tree/nvim-tree.lua' -- file explorer
  use 'szw/vim-maximizer' -- maximizes and restores current window

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim' -- For git blame & browse

  use 'numToStr/Comment.nvim' -- commenting with gc
  use 'tpope/vim-surround'

  use 'p00f/nvim-ts-rainbow'

  use 'bluz71/vim-nightfly-guicolors' -- preferred colorscheme
  use 'whatsthatsmell/codesmell_dark.vim'
  use { "catppuccin/nvim", as = "catppuccin" }
  use 'folke/tokyonight.nvim'
  use 'Mofiqul/vscode.nvim'
  use 'ellisonleao/gruvbox.nvim'
  use { "rockyzhang24/arctic.nvim", requires = { "rktjmp/lush.nvim" } }

  use({
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'
      dashboard.section.header.val = {
        [[                               __                ]],
        [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
        [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
        [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
        [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
        [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
      }
      dashboard.section.buttons.val = {
        dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
        dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
      }
      dashboard.config.opts.noautocmd = true

      vim.cmd [[autocmd User AlphaReady echo 'ready']]

      alpha.setup(dashboard.config)
    end
  })

  if packer_bootstrap then
    require("packer").sync()
  end
end)
