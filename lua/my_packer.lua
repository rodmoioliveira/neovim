require('packer').startup(function(use)
  use 'lewis6991/impatient.nvim'

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colors
  -- use 'Jorengarenar/vim-darkness'
  -- use 'LuRsT/austere.vim'
  -- use 'LuRsT/dvo.vim'
  -- use 'Michal-Miko/vim-mono-red'
  -- use 'Resonious/vim-camo'
  -- use 'abnt713/vim-hashpunk'
  -- use 'chr4/jellygrass.vim'
  -- use 'duckwork/low.vim'
  -- use 'fenetikm/falcon'
  -- use 'igrmk/kull-vim'
  -- use 'jalvesaq/southernlights'
  -- use 'jaredgorski/fogbell.vim'
  -- use 'jasoncarr0/sidewalk-colorscheme'
  -- use 'kyoto-shift/film-noir'
  -- use 'lucasprag/simpleblack'
  -- use 'marlun/vim-starwars'
  use 'p7g/vim-bow-wob'
  -- use 'rafi/awesome-vim-colorschemes'
  -- use 'ryanpcmcquen/true-monochrome_vim'
  -- use 'sff1019/vim-joker'
  -- use 'shattered/vimcolors'
  -- use 'smallwat3r/vim-simplicity'
  -- use 'szorfein/fantasy.vim'
  -- use 't184256/vim-boring'
  -- use 'theJian/Mogao'
  -- use 'tomasr/molokai'
  -- use 'tudurom/bleh.vim'
  -- use 'zaki/zazen'
  -- use 'zefei/simple-dark'

  -- gitsigns
  use {
    'lewis6991/gitsigns.nvim',
    requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- vim commentary
  use 'tpope/vim-commentary'

  -- A tree explorer plugin for vim.
  use 'ntpeters/vim-better-whitespace'

  -- This plugin is used for displaying thin vertical lines at each indentation
  use "lukas-reineke/indent-blankline.nvim"

  -- MarkdownPreview
  use({
    'iamcco/markdown-preview.nvim',
    run = 'cd app && yarn install',
    setup = function() vim.g.mkdp_filetypes = { 'markdown' } end,
    ft = { 'markdown' }
  })

  -- Auto Pair
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Autogenerate tags
  use 'ludovicchabant/vim-gutentags'

  -- Autoreoad Change Files
  use 'djoshea/vim-autoread'

  -- Color hex
  use 'norcalli/nvim-colorizer.lua'

  -- fzf fuzzy finder - https://github.com/junegunn/fzf
  use { 'junegunn/fzf', dir = '~/.fzf', run = './install --all' }

  -- https://github.com/junegunn/fzf.vim
  use 'junegunn/fzf.vim'

  -- LSP
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
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

  use {
    "folke/which-key.nvim",
    config = function()
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
end)
