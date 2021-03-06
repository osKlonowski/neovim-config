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
    \ 'i' : 'toggle-comment',
    \ }

  let g:which_key_map.s = {
    \ 'name' : '+FZF',
    \ 'b' : 'buffers',
    \ 'f' : 'in-files',
    \ 't' : 'tags',
    \ 'm' : 'marks',
    \ 's' : 'files',
    \ }
  
  let g:which_key_map.f = {
    \ 'name' : '+Ferret',
    \ 'a' : 'ferret-ack',
    \ 's' : 'ferret-ack-word',
    \ 'l' : 'ferret-lack',
    \ 'r' : 'ferret-acks',
    \ }

" Loads the which_key_map dictionary into WhichKey
autocmd! User vim-which-key call which_key#register('<Space>', 'g:which_key_map')
