vim.g.mapleader = " "

local keyset = vim.keymap.set

keyset('n', '<leader>h', ':nohlsearch<CR>', { noremap = true, unique = true, silent = false }) -- Space remove highlight serch

-- Gitsigns
keyset('n', ']g', ':Gitsigns next_hunk<CR>', { noremap = true, unique = true, silent = false }) -- Next git change
keyset('n', '[g', ':Gitsigns prev_hunk<CR>', { noremap = true, unique = true, silent = false }) -- Prev git change
keyset('n', '<leader>d', ':Gitsigns diffthis<CR>', { noremap = true, unique = true, silent = false }) -- Diff changes

-- -- Keep cursor in the middle of the screen when serching
-- keyset("n", "n", "nzzzv", { noremap = true, unique = true, silent = false })
-- keyset("n", "N", "Nzzzv", { noremap = true, unique = true, silent = false })

-- [S]plit line (sister to [J]oin lines) S is covered by cc.
keyset("n", "S", "mzi<CR><ESC>`z", { noremap = true, unique = true, silent = false })

-- Toggle wrap
keyset("n", "<leader>w", ":set wrap!<CR>", { noremap = true, unique = true, silent = false })

-- Toggle list
keyset("n", "<leader>l", ":set list!<CR>", { noremap = true, unique = true, silent = false })

-- Diagnostic
keyset('n', '<leader>e', vim.diagnostic.open_float, { noremap = true, unique = true, silent = false })
keyset('n', '[x', vim.diagnostic.goto_prev, { noremap = true, unique = true, silent = false })
keyset('n', ']x', vim.diagnostic.goto_next, { noremap = true, unique = true, silent = false })
keyset('n', '<leader>q', vim.diagnostic.setloclist, { noremap = true, unique = true, silent = false })
