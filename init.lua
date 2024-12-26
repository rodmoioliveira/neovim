-- =======================================================================
-- Utils
-- =======================================================================
function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true, unique = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

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
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("fzf-lua").setup({})
    end,
    opts = { 'skim' }
  },
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
        numhl = true,       -- Toggle with `:Gitsigns toggle_numhl`
        linehl = false,     -- Toggle with `:Gitsigns toggle_linehl`
        word_diff = false,  -- Toggle with `:Gitsigns toggle_word_diff`
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
        status_formatter = nil,  -- Use default
        max_file_length = 40000, -- Disable if file is longer than this (in lines)
        preview_config = {
          -- Options passed to nvim_open_win
          border = 'rounded',
          style = 'minimal',
          relative = 'cursor',
          row = 0,
          col = 2
        },
        on_attach = function(bufnr)
          local gitsigns = require('gitsigns')
          local opts = { buffer = bufnr }
          local fn_next = function()
            if vim.wo.diff then
              vim.cmd.normal({ ']g', bang = true })
            else
              gitsigns.nav_hunk('next')
            end
          end
          local fn_prev = function()
            if vim.wo.diff then
              vim.cmd.normal({ '[g', bang = true })
            else
              gitsigns.nav_hunk('prev')
            end
          end

          -- Navigation
          Map('n', ']g', fn_next, opts)
          Map('n', '[g', fn_prev, opts)

          -- Actions
          Map('n', '<leader>gb', "<cmd>Gitsigns blame<CR>", opts)
          Map('n', '<leader>gd', gitsigns.diffthis, opts)

          -- Text object
          Map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>', opts)
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
  { "tpope/vim-surround", opt = {} },
  { 'windwp/nvim-autopairs', event = "InsertEnter", config = true },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup {
        options = {
          icons_enabled = false,
          theme = 'codedark',
          component_separators = { left = '|', right = '|' },
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
          lualine_c = { 'buffers' },
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
  {
    "folke/lazydev.nvim",
    ft = "lua", -- only load on lua files
    opts = {
      library = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      },
    },
  },

  -- =======================================================================
  -- Completions
  -- =======================================================================
  {
    'saghen/blink.cmp',
    event = { "LspAttach" },
    dependencies = { 'rafamadriz/friendly-snippets', 'nvim-tree/nvim-web-devicons' },
    version = '*',
    opts = {
      completion = {
        ghost_text = { enabled = true },
        list = { selection = function(ctx) return ctx.mode == "cmdline" end, },
        menu = { border = 'single' },
        documentation = { window = { border = 'single' } },
      },
      signature = { enabled = true, window = { border = 'single' } },

      -- https://cmp.saghen.dev/configuration/keymap.html#default
      keymap = { preset = 'default' },
      appearance = {
        highlight_ns = vim.api.nvim_create_namespace('blink_cmp'),
        use_nvim_cmp_as_default = true,
        nerd_font_variant = 'mono',
        kind_icons = {
          Text = 'T',
          Method = 'M',
          Function = 'F',
          Constructor = 'C',

          Field = 'f',
          Variable = 'v',
          Property = 'p',

          Class = 'c',
          Interface = 'i',
          Struct = 's',
          Module = 'm',

          Unit = 'u',
          Value = 'v',
          Enum = 'e',
          EnumMember = 'e',

          Keyword = 'k',
          Constant = 'c',

          Snippet = 's',
          Color = 'c',
          File = 'f',
          Reference = 'r',
          Folder = 'f',
          Event = 'r',
          Operator = 'o',
          TypeParameter = 't',
        },
      },
      sources = {
        default = { 'lazydev', 'lsp', 'path', 'snippets', 'buffer' },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            -- make lazydev completions top priority (see `:h blink.cmp`)
            score_offset = 100,
          },
        },
      },
    },
    opts_extend = { "sources.default" }
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "j-hui/fidget.nvim",
      "saghen/blink.cmp",
    },
    opts = {
      servers = {
        lua_ls = {
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim", "it", "describe", "before_each", "after_each" },
              }
            }
          }
        }
      }
    },

    -- =======================================================================
    -- Lsp Config
    -- =======================================================================
    config = function()
      local blink_capabilities = require("blink.cmp").get_lsp_capabilities()
      local capabilities = vim.tbl_deep_extend(
        "force",
        {},
        vim.lsp.protocol.make_client_capabilities(),
        blink_capabilities)

      require("fidget").setup({})
      require("mason").setup()
      require("mason-lspconfig").setup({
        automatic_installation = true,
        ensure_installed = {
          "lua_ls",
          "rust_analyzer",
        },
        handlers = {
          function(server_name)
            require("lspconfig")[server_name].setup {
              capabilities = capabilities
            }
          end,
        }
      })

      -- =======================================================================
      -- Diagnostics
      -- =======================================================================
      vim.diagnostic.config({
        float = {
          border = 'rounded',
        },
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
      -- LspAttach
      -- =======================================================================
      vim.api.nvim_create_autocmd('LspAttach', {
        callback = function(event)
          local opts = { noremap = true, unique = false, silent = false, buffer = event.buf }

          Map('n', '<leader>f', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
          Map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
          Map('n', 'go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)

          -- Check :h lsp-defaults
          -- 'formatexpr' is set to |vim.lsp.formatexpr()|, so you can format lines via |gq| if the language server supports it.
          -- Map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts) -- :h K
          -- Map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts) -- :h CTRL-], CTRL-W_], CTRL-W_}
          -- Map('n', 'grn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
          -- Map('n', 'gra', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
          -- Map('n', 'grr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
          -- Map('n', 'gri', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
          -- Map('n', 'gO', '<cmd>lua vim.lsp.buf.document_symbol()<cr>', opts)
          -- Map('i', '<C-s>', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
        end,
      })
   end
  }
})

-- =======================================================================
-- Commands
-- =======================================================================
vim.cmd('colorscheme bow-wob')
vim.cmd('highlight SignColumn guibg=bow-wob')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- :h fzf-lua-coming-from-fzf.vim?
vim.cmd(':FzfLua setup_fzfvim_cmds')

-- =======================================================================
-- Remaps
-- Please check out the default-mappings in :h default-mappings
-- =======================================================================
-- search
-- Map('n', '<leader>h', ':nohlsearch<CR>') -- :h CTRL-L-default

-- wrap and list
Map("n", "<leader>w", ":set wrap!<CR>") -- Toggle wrap
Map("n", "<leader>l", ":set list!<CR>") -- Toggle list

-- diagnostics
-- Map('n', '<C-W>d', vim.diagnostic.open_float) -- :h CTRL-W_d-default
-- Map('n', '[d', vim.diagnostic.goto_prev) -- :h [d-default
-- Map('n', ']d', vim.diagnostic.goto_next) -- :h ]d-default
Map('n', '<leader>q', vim.diagnostic.setloclist)

-- move text on visual mode
Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")

-- buffers
Map("n", "<TAB>", ":bn<CR>")
Map("n", "<S-TAB>", ":bp<CR>")

-- center screen on search and screen movement
Map("n", "<C-d>", "<C-d>zz")
Map("n", "<C-u>", "<C-u>zz")
Map("n", "n", "nzzzv")
Map("n", "N", "Nzzzv")
