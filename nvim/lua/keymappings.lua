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
--map('i', '\"', '\"\"<left>', options)
--map('i', '\'', '\'\'<left>', options)
--map('i', '(', '()<left>', options)
--map('i', '[', '[]<left>', options)
--map('i', '{', '{}<left>', options)
--map('i', '{<CR>', '{<CR>}<ESC>0', options)
--map('i', '{;<CR>', '{<CR>};<ESC>0', options)
