local keyset = vim.keymap.set

keyset('n', '<s-right>', ':tabnext<CR>', { noremap = true }) -- Next and Prev tabs
keyset('n', '<s-left>', ':tabprevious<CR>', { noremap = true }) -- Next and Prev tabs
keyset('n', '<space>', ':nohlsearch<CR>', { noremap = true }) -- Space remove highlight serch
keyset('n', '[g', ':Gitsigns next_hunk<CR>', { noremap = true })
keyset('n', ']g', ':Gitsigns prev_hunk<CR>', { noremap = true })
