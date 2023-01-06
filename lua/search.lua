vim.cmd [[
augroup search_highlight_color
    autocmd!
    autocmd ColorScheme * hi Search                  gui=none    guibg=Cyan1     guifg=Black
augroup END
]]
