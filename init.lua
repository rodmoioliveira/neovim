require("my_packer")
require("lsp")
require("settings")
require("mappings")
require("search")

require("plugins.coc")
require("plugins.git")
require("plugins.ale")
require("plugins.better-whitespace")

vim.cmd('colorscheme bow-wob')
vim.cmd('highlight SignColumn guibg=bow-wob')

require('plugins.tabline')
require("colors")
