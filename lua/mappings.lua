local keyset = vim.keymap.set
local opts = {noremap = true}

keyset('n', '<s-right>', ':tabnext<CR>', opts) -- Next tab
keyset('n', '<s-left>', ':tabprevious<CR>', opts) -- Prev tabs
keyset('n', '<space>', ':nohlsearch<CR>', opts) -- Space remove highlight serch
keyset('n', '[g', ':Gitsigns next_hunk<CR>', opts) -- Next git change
keyset('n', ']g', ':Gitsigns prev_hunk<CR>', opts) -- Prev git change
