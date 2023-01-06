require("plugins")
require("lsp")
require("settings")
require("mappings")

require("plugins.coc")
require("plugins.git")
require("plugins.ale")

vim.cmd('colorscheme bow-wob')
vim.cmd('highlight SignColumn guibg=bow-wob')

require('wlsample.airline')
