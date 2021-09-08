nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <C-n> :NvimTreeFindFile<CR>

set termguicolors
highlight NvimTreeFolderIcon guibg=NONE guifg=#FFA155
let g:nvim_tree_ignore = [ '.git', '.cache', '*.obj', '*.os' ] 
