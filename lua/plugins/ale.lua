vim.g.ale_disable_lsp = 1
vim.g.ale_echo_msg_error_str = 'Error'
vim.g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
vim.g.ale_echo_msg_info_str = 'Info'
vim.g.ale_echo_msg_warning_str = 'Warning'
vim.g.ale_set_loclist = 0
vim.g.ale_set_quickfix = 1
vim.g.ale_sign_column_always = 0
vim.g.ale_sign_error = '>'
vim.g.ale_sign_info = ':'
vim.g.ale_sign_warning = '*'

local keyset = vim.keymap.set

-- Use `[x` and `]x` to navigate diagnostics
keyset("n", "]x", "<Plug>(ale_next_wrap)", {silent=true})
keyset("n", "[x", "<Plug>(ale_previous_wrap)", {silent=true})

vim.cmd [[
augroup ale_signs_colors
  autocmd!
  autocmd ColorScheme * highlight ALEInfoSign    ctermfg=9 ctermbg=15 guifg=grey100 guibg=NONE
  autocmd ColorScheme * highlight ALEErrorSign   ctermfg=9 ctermbg=15 guifg=red     guibg=NONE
  autocmd ColorScheme * highlight ALEWarningSign ctermfg=9 ctermbg=15 guifg=yellow  guibg=NONE
augroup END
]]
