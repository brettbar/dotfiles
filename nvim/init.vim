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
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'rafi/awesome-vim-colorschemes'

call plug#end()


let g:airline_theme='sierra'
"let ayucolor="mirage"
"set background=light
"colorscheme one
let g:vim_markdown_new_list_item_indent = 1
let g:notes_tab_indents = 0

set background=dark
let g:siena_Sunset = 1
colorscheme siena

highlight! Normal guibg=NONE guifg=#B3B1AD
"highlight! Normal guibg=#191919 guifg=#B3B1AD

highlight LineNr guibg=NONE
highlight ColorColumn guibg=#151515

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
set nofoldenable

        
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


