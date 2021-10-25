" PERSONAL MAPPINGS
nnoremap Y y$

" close current buffer
nmap <leader>x :close<cr>

" clear search highlights
nmap <silent>,/ :nohls<cr>

" make the arrow keys switch between splits
map <up>    <C-w>k
map <down>  <C-w>j
map <right> <C-w>l
map <left>  <C-w>h

" ESC "
inoremap jk <Esc>

" remove buffer
nnoremap <leader>d :bd<CR>

nmap ]a :ALENextWrap<CR>
nmap [a :ALEPreviousWrap<CR>

" Keeping it centered remappings
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
nnoremap <C-j> :cnext<CR>zzzv

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u

" shift no longer required
nnoremap ; :

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

" paste something yanked not deleted "
nmap ,p "0p
nmap ,P "0P
