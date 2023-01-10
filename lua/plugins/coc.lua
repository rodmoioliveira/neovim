local keyset = vim.keymap.set

-- Autocomplete
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end

-- Use Tab for trigger completion with characters ahead and navigate
-- NOTE: There's always a completion item selected by default, you may want to enable
-- no select by setting `"suggest.noselect": true` in your configuration file
-- NOTE: Use command ':verbose imap <tab>' to make sure Tab is not mapped by
-- other plugins before putting this into your config
local opts = {
    unique = true,
    silent = true,
    noremap = true,
    expr = true,
    replace_keycodes = false
}

keyset("i", "<Tab>",
       'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<Tab>" : coc#refresh()',
       opts)
keyset("i", "<S-Tab>", [[coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"]], opts)

-- Make <Tab> to accept selected completion item or notify coc.nvim to format
-- <C-g>u breaks current undo, please make your own choice
keyset("i", "<C-Down>",
       [[coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"]],
       opts)

-- Use <c-space> to trigger completion
keyset("i", "<c-space>", "coc#refresh()", {silent = true, expr = true})

-- GoTo code navigation
keyset("n", "gd", "<Plug>(coc-definition)", {silent = true})

-- Highlight the symbol and its references on a CursorHold event(cursor is idle)
vim.api.nvim_create_augroup("CocGroup", {})
vim.api.nvim_create_autocmd("CursorHold", {
    group = "CocGroup",
    command = "silent call CocActionAsync('highlight')",
    desc = "Highlight symbol under cursor on CursorHold"
})

-- Use `[x` and `]x` to navigate diagnostics
-- Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
keyset("n", "[x", "<Plug>(coc-diagnostic-prev)", {silent = true})
keyset("n", "]x", "<Plug>(coc-diagnostic-next)", {silent = true})

-- Setup formatexpr specified filetype(s)
vim.api.nvim_create_autocmd("FileType", {
    group = "CocGroup",
    pattern = "typescript,json",
    command = "setl formatexpr=CocAction('formatSelected')",
    desc = "Setup formatexpr specified filetype(s)."
})

-- Update signature help on jump placeholder
vim.api.nvim_create_autocmd("User", {
    group = "CocGroup",
    pattern = "CocJumpPlaceholder",
    command = "call CocActionAsync('showSignatureHelp')",
    desc = "Update signature help on jump placeholder"
})

-- Add `:Format` command to format current buffer
vim.api.nvim_create_user_command("Format", "call CocAction('format')", {})

-- https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim
vim.cmd [[
augroup coc_diagnostic_colors
    autocmd!
    autocmd ColorScheme * hi DiagnosticSignError  ctermfg=9 ctermbg=15 guifg=red      guibg=NONE
    autocmd ColorScheme * hi DiagnosticSignWarn   ctermfg=9 ctermbg=15 guifg=orange   guibg=NONE
    autocmd ColorScheme * hi DiagnosticSignInfo   ctermfg=9 ctermbg=15 guifg=grey100  guibg=NONE
    autocmd ColorScheme * hi DiagnosticSignHint   ctermfg=9 ctermbg=15 guifg=grey100  guibg=NONE
augroup END
]]
