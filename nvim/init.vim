syntax on
filetype on
filetype plugin on
filetype indent on
call plug#begin('~/.config/nvim/plugged')

Plug 'fatih/vim-go'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'ahonn/resize.vim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'psliwka/vim-smoothie'
Plug 'pangloss/vim-javascript'

Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'rafi/awesome-vim-colorschemes'
call plug#end()


"let g:airline_theme=''
"let ayucolor="mirage"
"set background=light
"colorscheme one

set background=dark
let g:sierra_Pitch = 1
colorscheme sierra

highlight Normal guibg=NONE ctermbg=NONE guifg=#aaaaaa
highlight LineNr guibg=NONE
highlight ColorColumn guibg=#111111

augroup cmdline
    autocmd!
    autocmd CmdlineLeave : lua vim.defer_fn(function() vim.cmd('echo ""') end, 1000)
augroup END 

let loaded_matchparen = 1
let mapleader = " "

"set noshowmode
"set noruler
"set laststatus=0
"set noshowcmd

        
nnoremap <S-h> :call ToggleHiddenAll()<CR>
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

function ForceFoldmethodIndent()
    if &foldenable
        se foldmethod=indent
    endif
endfunction

nnoremap <Leader><CR> :so ~/.config/nvim/init.vim<CR>


inoremap <C-c> <esc>


