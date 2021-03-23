Plug 'preservim/nerdcommenter'
  let NERDSpaceDelims=1
  let NERDMenuMode=0
  " always comment the whole line, no matter where the cursor is
  let NERDCommentWholeLinesInVMode=1

nnoremap <space>/ :call NERDComment('', 'toggle')<CR>
autocmd FileType javascript.jsx setlocal commentstring={/*\ %s\ */}
