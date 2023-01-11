require("my_packer")
require('impatient')
require("lsp")
require("mappings")
require("search")

require("plugins.git")
require("plugins.better-whitespace")
require("plugins.indentline")

vim.cmd('colorscheme bow-wob')
vim.cmd('highlight SignColumn guibg=bow-wob')

require('plugins.tabline')
require("colors")
require("settings")
