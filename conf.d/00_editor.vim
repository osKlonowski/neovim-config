
" editor.vim - basic stuff that improve editing all-around
"
" Plug 'ctrlpvim/ctrlp.vim'
  " let g:ctrlp_match_window='bottom,order:btt,min:1,max:7,results:10'
  " let g:ctrlp_working_path_mode='ra'
  " let g:ctrlp_jump_to_buffer=2
  " let g:ctrlp_custom_ignore = {
    " \ 'dir':  '\v[\/]\.(git|hg|svn|gitkeep|azk)$',
    " \ 'file': '\v\~$|\.(o|swp|pyc|png|gif|jpg|jpeg|svg|eot|ttf|woff)$|(^|[/\\])\.(hg|git|azk|bundle)($|[/\\])'
    " \ }

" let g:ctrlp_map='<leader>p'
  " nnoremap <leader>b :CtrlPBuffer<cr>
  " nnoremap <leader>m :CtrlPMRU<cr>
  " nnoremap <leader>. :CtrlPTag<cr>

  " " use ag in ctrlp: very fast, respects .gitignore and doesn't need cache
  " if executable('ag')
    " let g:ctrlp_user_command='ag %s -l --nocolor -g ""'
    " let g:ctrlp_use_caching=0
  " endif

Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-markdown'
Plug 'pacha/vem-tabline'

Plug 'terryma/vim-multiple-cursors'
  " Default mapping
  " let g:multi_cursor_next_key='<C-n>'
  " let g:multi_cursor_prev_key='<C-p>'
  " let g:multi_cursor_skip_key='<C-x>'
  " let g:multi_cursor_quit_key='<Esc>'

Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-projectionist'

Plug 'tpope/vim-fugitive'
  " gr will merge from the right side
  nmap <leader>gr :diffget //3<CR>
  " gl will merge from the left side
  nmap <leader>gl :diffget //2<CR>
  " gs Git Status
  nmap <leader>gs :G<CR>
  nnoremap <leader>gc :Git commit<CR>
  nnoremap <leader>gp :Git push<CR>
