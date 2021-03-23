" PERSONAL MAPPINGS

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" better way to escape
inoremap jk <Esc>
" adds functionality to move line(s) up and down quicker
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Alternate way to save
nnoremap <C-s> :w<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv
