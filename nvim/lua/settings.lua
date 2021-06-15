local utils = require('utils')

local indent = 4
local cmd = vim.cmd
local o = utils.opt
local v= vim.cmd

cmd 'syntax enable'
cmd 'filetype plugin indent on'
cmd 'set swapfile'
cmd 'set dir=~/tmp'
o('b', 'expandtab', true)
o('b', 'shiftwidth', indent)
o('b', 'smartindent', true)
o('b', 'tabstop', indent)
o('b', 'softtabstop', indent)
o('o', 'hidden', true)
o('o', 'ignorecase', true)
o('o', 'scrolloff', 8)
o('o', 'shiftround', true)
o('o', 'smartcase', true)
o('o', 'splitbelow', true)
o('o', 'splitright', true)
o('w', 'number', true)
o('w', 'relativenumber', true)
o('o', 'wildmode', 'list:longest')
o('o', 'clipboard','unnamed,unnamedplus')
o('o', 'termguicolors', true)
o('o', 'encoding', 'UTF-8')
o('o', 'exrc', true)
o('o', 'nu', true)
o('o', 'hidden', true)
o('o', 'incsearch', true)
o('o', 'signcolumn', 'yes')
o('o', 'colorcolumn', '80')
o('o', 'updatetime', 50)
o('o', 'termguicolors', true)
o('o', 'mouse', 'a', true)
v('set nofoldenable')
v('set noerrorbells')
v('set nohlsearch')
v('set nowrap')
v('set noswapfile')
v('set nobackup')
v('set noshowmode')

--o('o', 'undodir', '~/.vim/undodir')
--o('o', 'undofile', true)

-- set cmdheight=2
-- set guicursor=

-- Highlight on yank
vim.cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

