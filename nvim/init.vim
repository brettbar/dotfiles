syntax on
filetype on
filetype plugin on
filetype indent on
call plug#begin('~/.config/nvim/plugged')

"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'preservim/nerdtree'
Plug 'mbbill/undotree'
Plug 'ahonn/resize.vim'

Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'jackguo380/vim-lsp-cxx-highlight'

Plug 'fatih/vim-go'
Plug 'dart-lang/dart-vim-plugin'
Plug 'pangloss/vim-javascript'

Plug 'psliwka/vim-smoothie'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'preservim/nerdcommenter'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'fcpg/vim-fahrenheit'

call plug#end()

let g:dart_style_guide = 0

"let ayucolor="mirage"
let g:vim_markdown_new_list_item_indent = 1
let g:notes_tab_indents = 0

set background=dark

let g:airline_theme='gruvbox'
let g:siena_Sunset = 1
colorscheme siena

"let g:sierra_Sunset = 1
"colorscheme sierra

"colorscheme gruvbox

autocmd Filetype tex LanguageToolSetUp
autocmd Filetype md LanguageToolSetUp

highlight! Normal guibg=NONE guifg=#B3B1AD
"highlight! Normal guifg=#B3B1AD
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



" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua << EOF
require'lspconfig'.gopls.setup{}
EOF

"source ~/.config/nvim/plugin/nerdtree.vim
"source ~/.config/nvim/plugin/telescope.vim
source ~/.config/nvim/plugin/lsp-config.vim
source ~/.config/nvim/plugin/compe-config.vim
"source ~/.config/nvim/plugin/golang.vim

