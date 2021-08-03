local utils = require('utils')
local map = utils.map

map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights

options = { noremap = true }

map('', '<leader>u', ':UndoTreeShow', options)
map('', '<leader>h', '<cmd>:wincmd h<CR>', options)
map('', '<leader>j', '<cmd>:wincmd j<CR>', options)
map('', '<leader>k', '<cmd>:wincmd k<CR>', options)
map('', '<leader>l', '<cmd>:wincmd l<CR>', options)
map('', '<C-H>', '<cmd>:ResizeRight<CR>', options)
map('', '<C-J>', '<cmd>:ResizeDown<CR>', options)
map('', '<C-K>', '<cmd>:ResizeUp<CR>', options)
map('', '<C-L>', '<cmd>:ResizeLeft<CR>', options)
map('', '<C-c>', '<esc>', options)

map('', 'Y', 'y$', options)
map('', 'n', 'nzzzv', options)
map('', 'N', 'Nzzzv', options)
map('', 'J', 'mzJ`z', options)

map('i', ',', ',<c-g>u', options)
map('i', '.', '.<c-g>u', options)
map('i', '!', '!<c-g>u', options)
map('i', '?', '?<c-g>u', options)

map('v', 'J', ':m \'>+1<CR>gv=gv', options)
map('v', 'K', ':m \'<-2<CR>gv=gv', options)

map('i', '<C-j>', '<esc>:m .+1<CR>==', options)
map('i', '<C-k>', '<esc>:m .-2<CR>==', options)
map('', '<leader>K', '<esc>:m .-2<CR>==', options)
map('', '<leader>J', '<esc>:m .+1<CR>==', options)
