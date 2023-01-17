local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  -- vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap = true, silent = true, buffer = bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.formatting() end,
                 bufopts)
end

require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = {
    -- Replace these with whatever servers you want to install
    -- https://langserver.org/
    'sumneko_lua', 'rust_analyzer', 'tsserver', 'bashls', 'golangci_lint_ls',
    'pyright', 'bufls', 'yamlls', 'dockerls', 'jsonls'
  }
})

local lspconfig = require('lspconfig')
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local get_servers = require('mason-lspconfig').get_installed_servers
local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150
}

for _, server_name in ipairs(get_servers()) do
  lspconfig[server_name].setup({
    on_attach = on_attach,
    flags = lsp_flags,
    capabilities = capabilities
  })
end

lspconfig["rust_analyzer"].setup {
  on_attach = on_attach,
  flags = lsp_flags,
  capabilities = capabilities,
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = {
        allFeatures = true,
        overrideCommand = {
          'cargo', 'clippy', '--workspace', '--message-format=json',
          '--all-targets', '--all-features'
        }
      }
    }
  }
}

lspconfig.sumneko_lua.setup {
  on_attach = on_attach,
  flags = lsp_flags,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT'
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = { 'vim' }
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = { enable = false }
    }
  }
}

-- https://smarttech101.com/nvim-lsp-configure-language-servers-shortcuts-highlights/
-- https://www.nerdfonts.com/font-downloads
local kind_icons = {
  Class = "ﴯ",
  Color = "",
  Constant = "",
  Constructor = "",
  Enum = "",
  EnumMember = "",
  Event = "",
  Field = "",
  File = "",
  Folder = "",
  Function = "",
  Interface = "",
  Keyword = "",
  Method = "",
  Module = "",
  Operator = "",
  Property = "ﰠ",
  Reference = "",
  Snippet = "",
  Struct = "",
  Text = "",
  TypeParameter = "",
  Unit = "",
  Value = "",
  Variable = ""
}

-- luasnip setup
local luasnip = require 'luasnip'

-- nvim-cmp setup
local cmp = require 'cmp'
cmp.setup {
  formatting = {
    format = function(entry, vim_item)
      -- Kind icons
      vim_item.kind = string.format("%s %s", kind_icons[vim_item.kind],
                                    vim_item.kind) -- Concatenate the icons with name of the item-kind
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        spell = "[Spellings]",
        zsh = "[Zsh]",
        buffer = "[Buffer]",
        ultisnips = "[Snip]",
        treesitter = "[Treesitter]",
        calc = "[Calculator]",
        nvim_lua = "[Lua]",
        path = "[Path]",
        nvim_lsp_signature_help = "[Signature]",
        cmdline = "[Vim Command]"
      })[entry.source.name]
      return vim_item
    end
  },
  snippet = { expand = function(args) luasnip.lsp_expand(args.body) end },
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
  matching = { disallow_fuzzy_matching = false },
  sources = {
    { name = 'nvim_lsp' }, { name = 'luasnip' }, { name = 'buffer' },
    { name = 'path' }
  }
}

-- `/` cmdline setup.
cmp.setup.cmdline('/', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = { { name = 'buffer' } }
})

-- `:` cmdline setup.
cmp.setup.cmdline(':', {
  mapping = cmp.mapping.preset.cmdline(),
  sources = cmp.config.sources({ { name = 'path' } }, {
    { name = 'cmdline', option = { ignore_cmds = { 'Man', '!' } } }
  })
})

local signs = { Error = "E", Warn = "W", Hint = "H", Info = "I" }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl })
end
