local keyset = vim.keymap.set
local opts = {noremap = true}

keyset('n', '<s-right>', ':tabnext<CR>', opts) -- Next tab
keyset('n', '<s-left>', ':tabprevious<CR>', opts) -- Prev tabs
keyset('n', '<space>', ':nohlsearch<CR>', opts) -- Space remove highlight serch

-- gitsigns
keyset('n', '[g', ':Gitsigns next_hunk<CR>', opts) -- Next git change
keyset('n', ']g', ':Gitsigns prev_hunk<CR>', opts) -- Prev git change
keyset('n', '<leader>d', ':Gitsigns diffthis<CR>', opts)

-- Keep cursor in the middle of the screen when jump with Ctrl+(d|u)
keyset("n", "<C-d>", "<C-d>zz")
keyset("n", "<C-u>", "<C-u>zz")

-- Keep cursor in the middle of the screen when serching
keyset("n", "n", "nzzzv")
keyset("n", "N", "Nzzzv")
