" PERSONAL MAPPINGS
nnoremap Y y$

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" better way to escape
inoremap jk <Esc>
" adds functionality to move line(s) up and down quicker
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <leader>k :m .-2<CR>==
nnoremap <leader>j :m .+1<CR>==

" Alternate way to save
nnoremap <C-s> :w<CR>

" Greatest Pasting Remap Ever
vnoremap <leader>p "_dP

" Better tabbing inside buffer, tabs from left side
vnoremap < <gv
vnoremap > >gv
