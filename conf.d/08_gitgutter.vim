Plug 'airblade/vim-gitgutter'

" Builtin - Jump between hunks with ]c [c "

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

" nmap <leader>[ <Plug>(GitGutterPrevHunk)
" nmap <leader>] <Plug>(GitGutterNextHunk)

" Adds hunks count to statusline
function! GitStatus()
  let [a,m,r] = GitGutterGetHunkSummary()
  return printf('+%d ~%d -%d', a, m, r)
endfunction
set statusline+=%{GitStatus()}
