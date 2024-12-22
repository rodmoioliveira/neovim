-- =======================================================================
-- Bootstrap lazy.nvim
-- =======================================================================
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    lazyrepo,
    lazypath
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

-- =======================================================================
-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
-- =======================================================================
-- Options
-- =======================================================================
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.filetype.add { extension = { tex = "tex", zir = "zir" }, pattern = { ["[jt]sconfig.*.json"] = "jsonc" } }
vim.o.autoindent = true
vim.o.autoread = true
vim.o.backspace = "eol,start,indent"
vim.o.backup = false
vim.o.cindent = true
vim.o.cmdheight = 2 -- Height of the command bar
vim.o.conceallevel = 0
vim.o.cursorline = true -- highlight current line
vim.o.errorbells = false
vim.o.expandtab = true
vim.o.fileencoding = "utf-8" -- the encoding written to a file
vim.o.foldcolumn = "1" -- Add a bit extra margin to the left
vim.o.foldenable = true -- enable folding
vim.o.foldlevelstart = 10 -- open most folds by default
vim.o.foldmethod = "syntax" -- fold based on indent level
vim.o.foldnestmax = 10 -- 10 nested fold max
vim.o.hidden = true -- if hidden is not set, TextEdit might fail.
vim.o.hlsearch = true -- highlight matches
vim.o.ignorecase = true -- ignore case in search patterns
vim.o.incsearch = true -- search as characters are entered
vim.o.lazyredraw = true -- redraw only when we need to.
vim.o.linebreak = true
vim.o.mat = 2 -- How many tenths of a second to blink when matching brackets
vim.o.number = true
vim.o.relativenumber = true
vim.o.ruler = true -- Always show current position
vim.o.scrolloff = 0 -- minimal number of screen lines to keep above and below the cursor.
vim.o.sessionoptions = 'blank,curdir,folds,tabpages,winsize,winpos,terminal'
vim.o.shiftwidth = 2
vim.o.showcmd = true -- show command in bottom bar
vim.o.showmatch = true -- Show matching brackets when text indicator is over them
vim.o.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.o.sidescrolloff = 8 -- minimal number of screen lines to keep left and right of the cursor.
vim.o.signcolumn = "yes:1"
vim.o.smartcase = true -- smart case
vim.o.smartindent = true
vim.o.softtabstop = 2
vim.o.swapfile = false
vim.o.tabstop = 2
vim.o.termguicolors = true
vim.o.textwidth = 80
vim.o.timeoutlen = 600
vim.o.ttyfast = true
vim.o.updatetime = 300 -- You will have bad experience for diagnostic messages when it's default 4000.
vim.o.visualbell = false
vim.o.whichwrap = "b,s,<,>,h,l,[,]"
vim.o.wildignore = "*/node_modules/*,*/tmp/*,tags,*.jpg,*.png,*.pyc,*.min.js,*/dist/*,*/json/*,*/csv/*,*/target/*,node_modules,*.json,*.csv,*.txt,*.tsv"
vim.o.wildmenu = true -- visual autocomplete for command menu
vim.o.wrap = true
vim.o.writebackup = false -- Some servers have issues with backup files, see #649
vim.opt.list = false
vim.opt.listchars:append "eol:↴"
vim.opt.listchars:append "space:⋅"
vim.opt.shortmess:append "I" -- don't show the default intro message
vim.opt.shortmess:append "c" -- don't show redundant messages from ins-completion-menu
vim.opt.spelllang:append "cjk" -- disable spellchecking for asian characters (VIM algorithm does not support it)

-- =======================================================================
-- Setup lazy.nvim
-- =======================================================================
require("lazy").setup({
  { "ibhagwan/fzf-lua", dependencies = { "nvim-tree/nvim-web-devicons" }, config = function() require("fzf-lua").setup({}) end },
  {
    "lewis6991/gitsigns.nvim",
    opt = {},
    config = function()
      require("gitsigns").setup {
        signs = {
          add = { text = '+' },
          change = { text = '~' },
          delete = { text = '-' },
          topdelete = { text = '-' },
          changedelete = { text = '~' },
          untracked = { text = '┆' }
        },
        signcolumn = false, -- Toggle with `:Gitsigns toggle_signs`
        numhl = true, -- Toggle with `:Gitsigns toggle_numhl`
        linehl = false, -- Toggle with `:Gitsigns toggle_linehl`
        word_diff = false, -- Toggle with `:Gitsigns toggle_word_diff`
        watch_gitdir = { interval = 1000, follow_files = true },
        attach_to_untracked = true,
        current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
        current_line_blame_opts = {
          virt_text = true,
          virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
          delay = 1000,
          ignore_whitespace = false
        },
        current_line_blame_formatter = '<author>, <author_time:%Y-%m-%d> - <summary>',
        sign_priority = 6,
        update_debounce = 100,
        status_formatter = nil, -- Use default
        max_file_length = 40000, -- Disable if file is longer than this (in lines)
        preview_config = {
          -- Options passed to nvim_open_win
          border = 'single',
          style = 'minimal',
          relative = 'cursor',
          row = 0,
          col = 2
        },
        on_attach = function(bufnr)
          local gitsigns = require('gitsigns')

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Navigation
          map('n', ']g', function()
            if vim.wo.diff then
              vim.cmd.normal({']g', bang = true})
            else
              gitsigns.nav_hunk('next')
            end
          end)

          map('n', '[g', function()
            if vim.wo.diff then
              vim.cmd.normal({'[g', bang = true})
            else
              gitsigns.nav_hunk('prev')
            end
          end)

          -- Actions
          map('n', '<leader>gb', "<cmd>Gitsigns blame<CR>")
          map('n', '<leader>gd', gitsigns.diffthis)

          -- Text object
          map({'o', 'x'}, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
        end
      }

      -- https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim
      vim.cmd [[
      augroup gitsigns_colors
          autocmd!
          autocmd ColorScheme * hi DiffAdd                 gui=none    guibg=NONE       guifg=DarkOliveGreen3
          autocmd ColorScheme * hi DiffChange              gui=none    guibg=NONE       guifg=RoyalBlue1
          autocmd ColorScheme * hi DiffDelete              gui=none    guibg=NONE       guifg=IndianRed
          autocmd ColorScheme * hi DiffText                gui=none    guibg=NONE       guifg=yellow
          autocmd ColorScheme * hi GitSignsAdd             gui=none    guibg=NONE       guifg=DarkOliveGreen3
          autocmd ColorScheme * hi GitSignsChange          gui=none    guibg=NONE       guifg=RoyalBlue1
          autocmd ColorScheme * hi GitSignsDelete          gui=none    guibg=NONE       guifg=IndianRed
          autocmd ColorScheme * hi GitSignsUntracked       gui=none    guibg=NONE       guifg=grey69
      augroup END
      ]]
  end
  },
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
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup {
        options = {
          icons_enabled = false,
          theme = 'codedark',
          component_separators = { left = '', right = '' },
          section_separators = { left = '', right = '' },
          disabled_filetypes = { statusline = {}, winbar = {} },
          ignore_focus = {},
          always_divide_middle = true,
          globalstatus = false,
          refresh = { statusline = 1000, tabline = 1000, winbar = 1000 }
        },
        sections = {
          lualine_a = { 'mode' },
          lualine_b = { 'branch', 'diff', 'diagnostics' },
          lualine_c = { 'filename' },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location' }
        },
        inactive_sections = {
          lualine_a = {},
          lualine_b = {},
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {},
          lualine_z = {}
        },
        tabline = {},
        winbar = {},
        inactive_winbar = {},
        extensions = {}
      }
    end
  },
  { "rasulomaroff/cmp-bufname" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-cmdline" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-nvim-lsp-signature-help" },
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
})

-- =======================================================================
-- LspAttach
-- =======================================================================
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(event)
    local opts = { noremap = true, unique = true, silent = false , buffer = event.buf }

    vim.keymap.set('n', '<leader>f', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
    vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
    vim.keymap.set('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)

    -- Check :h lsp-defaults
    -- vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts) :h K
    -- vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts) -- Check CTRL-], CTRL-W_], CTRL-W_}
    vim.keymap.set('n', 'grn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
    vim.keymap.set('n', 'gra', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
    vim.keymap.set('n', 'grr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
    vim.keymap.set('n', 'gri', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
    vim.keymap.set('n', 'gO', '<cmd>lua vim.lsp.buf.document_symbol()<cr>', opts)
    vim.keymap.set('n', '<C-S>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
  end,
})

-- =======================================================================
-- lspconfig_defaults
-- =======================================================================
local lspconfig_defaults = require('lspconfig').util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  require('cmp_nvim_lsp').default_capabilities()
)

-- =======================================================================
-- lazy-lsp
-- =======================================================================
require("lazy-lsp").setup {
  default_config = {
    flags = {
      debounce_text_changes = 150,
    },
  },
  configs = {
    lua_ls = {
      settings = {
        Lua = {
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    },
  },
}

-- =======================================================================
-- Diagnostics
-- =======================================================================
vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = '✘',
      [vim.diagnostic.severity.WARN] = '▲',
      [vim.diagnostic.severity.HINT] = '⚑',
      [vim.diagnostic.severity.INFO] = '»',
    },
  },
})

-- =======================================================================
-- Completions
-- =======================================================================
local cmp = require('cmp')
local luasnip = require('luasnip')
cmp.setup({
  -- https://lsp-zero.netlify.app/docs/autocomplete.html#change-formatting-of-completion-item
  formatting = {
    -- changing the order of fields so the icon is the first
    fields = {'menu', 'abbr', 'kind'},

    -- here is where the change happens
    format = function(entry, item)
      local menu_icon = {
        nvim_lsp = 'λ',
        luasnip = '⋗',
        buffer = 'Ω',
        path = '🖫',
        nvim_lua = 'Π',
      }

      item.menu = menu_icon[entry.source.name]
      return item
    end,
  },
  window = {
    completion = cmp.config.window.bordered(),
    documentation = cmp.config.window.bordered(),
  },
  sources = {
    { name = 'nvim_lsp_signature_help' },
    { name = 'path' },
    { name = 'luasnip' },
    { name = 'buffer' },
    { name = 'nvim_lsp' },
    { name = 'bufname' },
  },
  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.jumpable(-1) then
        luasnip.jump(-1)
     else
        fallback()
      end
    end, { 'i', 's' })
  }),
})

-- =======================================================================
-- Commands
-- =======================================================================
vim.cmd('colorscheme bow-wob')
vim.cmd('highlight SignColumn guibg=bow-wob')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- =======================================================================
-- Remaps
-- Please check out the default-mappings in :h default-mappings
-- =======================================================================
-- search
-- vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, unique = true, silent = false }) -- :h CTRL-L-default

-- wrap and list
vim.keymap.set("n", "<leader>w", ":set wrap!<CR>", { noremap = true, unique = true, silent = false }) -- Toggle wrap
vim.keymap.set("n", "<leader>l", ":set list!<CR>", { noremap = true, unique = true, silent = false }) -- Toggle list

-- diagnostics
-- vim.keymap.set('n', '<C-W>d', vim.diagnostic.open_float, { noremap = true, unique = true, silent = false }) -- :h CTRL-W_d-default
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { noremap = true, unique = true, silent = false }) -- :h [d-default
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { noremap = true, unique = true, silent = false }) -- :h ]d-default
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { noremap = true, unique = true, silent = false })
