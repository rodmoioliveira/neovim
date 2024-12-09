require('packer').startup(function(use)
  use 'lewis6991/impatient.nvim'

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colors
  use 'p7g/vim-bow-wob'

  -- gitsigns
  use 'lewis6991/gitsigns.nvim'

  -- vim commentary
  use 'tpope/vim-commentary'

  -- vim surround
  use 'tpope/vim-surround'

  -- A tree explorer plugin for vim.
  use 'ntpeters/vim-better-whitespace'

  -- This plugin is used for displaying thin vertical lines at each indentation
  use "lukas-reineke/indent-blankline.nvim"

  -- Auto Pair
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- -- Autogenerate tags
  -- use 'ludovicchabant/vim-gutentags'

  -- Autoreoad Change Files
  use 'djoshea/vim-autoread'

  -- Color hex
  use 'norcalli/nvim-colorizer.lua'

  -- fzf fuzzy finder - https://github.com/junegunn/fzf
  use { 'junegunn/fzf', dir = '~/.fzf', run = './install --all' }

  -- https://github.com/junegunn/fzf.vim
  use 'junegunn/fzf.vim'

  -- LSP
  use { "L3MON4D3/LuaSnip", run = "make install_jsregexp" } -- Snippets plugin
  use 'hrsh7th/cmp-buffer' -- Source for buffer words.
  use 'hrsh7th/cmp-cmdline' -- Source for vim's cmdline.
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'hrsh7th/cmp-path' -- Source for filesystem paths.
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'williamboman/mason-lspconfig'
  use 'williamboman/mason.nvim'

  -- tabline
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
end)
