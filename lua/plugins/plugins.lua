return {
  { "lukas-reineke/lsp-format.nvim", opt = {} },
  { "ibhagwan/fzf-lua", dependencies = { "nvim-tree/nvim-web-devicons" }, config = function() require("fzf-lua").setup({}) end },
  { "lewis6991/gitsigns.nvim", opt = {}, config = function() require("gitsigns").setup({}) end },
  { "m4xshen/hardtime.nvim", dependencies = { "MunifTanjim/nui.nvim" }, opts = {} },
  { "ntpeters/vim-better-whitespace", opt = {} },
  { "p7g/vim-bow-wob", opt = {} },
  { "tpope/vim-commentary", opt = {} },
  { "tpope/vim-surround", opt = {} },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require('nvim-autopairs').setup {}
      local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
      local cmp = require 'cmp'
      cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
    end,
  },
  { 'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }, opts = {}, config = function() require("lualine").setup() end },
}
