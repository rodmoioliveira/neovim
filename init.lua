require("my_packer")
require("lsp")
require("settings")
require("mappings")
require("search")

require("plugins.coc")
require("plugins.git")
require("plugins.ale")

vim.cmd('colorscheme bow-wob')
vim.cmd('highlight SignColumn guibg=bow-wob')

require('plugins.tabline')
require("colors")
