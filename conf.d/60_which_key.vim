Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
  let g:mapleader = "\<Space>"
  set timeoutlen=400
  nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
  vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Define prefix dictionary
let g:which_key_map =  {}

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }

  let g:which_key_map.g = {
      \ 'name' : '+git',
      \ 's' : 'status',
      \ 'c' : 'commit',
      \ 'p' : 'push',
      \ 'l' : 'merge-left',
      \ 'r' : 'merge-right',
      \ }

  let g:which_key_map["/"] = {
    \ 'name' : 'Toggle-Comment',
    \ }

  let g:which_key_map.c = {
    \ 'name' : '+NERDCommenter',
    \ 'c' : 'toggle-comment',
    \ 'u' : 'uncomment',
    \'b':'align-both',
    \'l':'align-left',
    \ }

  let g:which_key_map.s = {
        \ 'name': '+Telescope',
        \ 'b': 'buffers',
        \ 'g': 'live-grep',
        \ 'f': 'find-files',
        \ 'c': 'code-actions',
        \ 's': 'word-grep',
        \ 'e': 'file-browser',
        \ 'i': 'buffer-find',
        \}

  let g:which_key_map.f = {
    \ 'name' : '+Ferret',
    \ 'a' : 'type-word-search',
    \ 's' : 'search-word',
    \ 'l' : 'loc-search',
    \ 'r' : 'ask-substitue-fr-qfl',
    \ }

let g:which_key_map.t = {
  \ 'name': '+Floaterm',
  \ 'o': 'open',
  \ 't': 'toggle',
  \ 'n': 'next-instance',
  \ 'p': 'prev-instance',
  \ 'h': 'hide',
  \ 'k': 'kill',
  \}

" Loads the which_key_map dictionary into WhichKey
autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
