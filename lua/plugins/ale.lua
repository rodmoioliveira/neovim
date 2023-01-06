vim.g.ale_disable_lsp = 1
vim.g.ale_echo_msg_error_str = 'E'
vim.g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
vim.g.ale_echo_msg_warning_str = 'W'
vim.g.ale_set_loclist = 0
vim.g.ale_set_quickfix = 1
vim.g.ale_sign_column_always = 1
vim.g.ale_sign_error = '__'
vim.g.ale_sign_warning = '--'

vim.cmd[[
let g:ale_linters = {
  \     'sh': ['language_server', 'bashate', 'cspell', 'shell', 'shellcheck'],
  \     'clojure': ['clj-kondo', 'joker'],
  \     'proto': ['buf-lint', 'protoc-gen-lint', 'protolint']
  \ }

let g:ale_fixers = {
  \     '*': ['remove_trailing_lines', 'trim_whitespace'],
  \     'javascript': ['eslint'],
  \     'yaml': ['yamlfix'],
  \     'yml': ['yamlfix'],
  \     'sh': ['shfmt'],
  \     'proto': ['buf-format', 'protolint']
  \}
]]
