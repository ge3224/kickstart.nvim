-- edit init.lua
vim.keymap.set('n', '<leader>ev', '<cmd>tabedit $MYVIMRC<CR>', { silent = true })

-- -- run prettier on current file
-- vim.keymap.set('n', '<leader>P', '<cmd>!pnpm exec prettier --write %<CR>', { silent = true })
--
-- -- run black on current file
-- vim.keymap.set('n', '<leader>B', '<cmd>!black %<CR>', { silent = true })

-- move line selections up or down
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { silent = true })

-- keep cursor in centered vertically in the window
vim.keymap.set('n', '<C-d>', '<C-d>zz', { silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { silent = true })
vim.keymap.set('n', 'n', 'nzzzv', { silent = true })
vim.keymap.set('n', 'N', 'Nzzzv', { silent = true })

-- quickfix list
vim.keymap.set('n', 'gn', '<cmd>cn<CR>', { silent = true })
vim.keymap.set('n', 'gp', '<cmd>cN<CR>', { silent = true })

vim.keymap.set('n', '<leader>lr', '<cmd>LspRestart<CR>', { silent = true })

-- open a small terminal
vim.keymap.set('n', '<leader>st', '<cmd>new<CR><C-w>J<cmd>resize 16<CR><cmd>term<CR>', { silent = true })

-- delete cached, i.e. swap file
vim.keymap.set('n', '<leader>zc', '<cmd>call system("rm -rdf ~/.local/state/nvim/swap")<CR>', { silent = true })
