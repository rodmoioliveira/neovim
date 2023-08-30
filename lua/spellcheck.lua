vim.cmd [[
augroup spellcheck
    autocmd!
    autocmd ColorScheme * hi SpellBad gui=none guibg=NONE guifg=Red
augroup END
]]
