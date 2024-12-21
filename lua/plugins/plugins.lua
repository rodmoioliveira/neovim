return {
  { "ibhagwan/fzf-lua", dependencies = { "nvim-tree/nvim-web-devicons" }, config = function() require("fzf-lua").setup({}) end },
  { "lewis6991/gitsigns.nvim", opt = {}, config = function() require("gitsigns").setup({}) end },
  { "m4xshen/hardtime.nvim", dependencies = { "MunifTanjim/nui.nvim" }, opts = {} },
  { "ntpeters/vim-better-whitespace", opt = {} },
  { "p7g/vim-bow-wob", opt = {} },
  { "tpope/vim-commentary", opt = {} },
  { "tpope/vim-surround", opt = {} },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    dependencies = { "hrsh7th/nvim-cmp" },
    config = function()
      require("nvim-autopairs").setup {}
      local cmp_autopairs = require "nvim-autopairs.completion.cmp"
      local cmp = require "cmp"
      cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end,
  },
  { "L3MON4D3/LuaSnip", version = "v2.*", build = "make install_jsregexp" },
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" }, opts = {}, config = function() require("lualine").setup() end },
  { "rasulomaroff/cmp-bufname" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-path" },
  { "hrsh7th/nvim-cmp" },
  { "neovim/nvim-lspconfig" },
  { "saadparwaiz1/cmp_luasnip" },
  {
    "dundalek/lazy-lsp.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("lazy-lsp").setup {}
    end,
  },
}
