syntax on
filetype on
filetype plugin on
filetype indent on
call plug#begin('~/.config/nvim/plugged')

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ayu-theme/ayu-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'ahonn/resize.vim'
Plug 'junegunn/fzf'

call plug#end()



"let g:airline_theme=''
let ayucolor="mirage"
colorscheme ayu

highlight clear SignColumn
highlight clear StatusLine
highlight Normal guibg=none


let loaded_matchparen = 1
let mapleader = " "


" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>



nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

nnoremap <C-H> :ResizeRight<CR>
nnoremap <C-J> :ResizeDown<CR>
nnoremap <C-K> :ResizeUp<CR>
nnoremap <C-L> :ResizeLeft<CR>



nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>


inoremap <C-c> <esc>






