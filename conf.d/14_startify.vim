Plug 'mhinz/vim-startify'

let g:startify_custom_header = [
                        \ ' _______  _______  ___   _  _______  ______    _______ ',
                        \ '|       ||       ||   | | ||   _   ||    _ |  |       |',
                        \ '|   _   ||  _____||   |_| ||  |_|  ||   | ||  |  _____|',
                        \ '|  | |  || |_____ |      _||       ||   |_||_ | |_____ ',
                        \ '|  |_|  ||_____  ||     |_ |       ||    __  ||_____  |',
                        \ '|       | _____| ||    _  ||   _   ||   |  | | _____| |',
                        \ '|_______||_______||___| |_||__| |__||___|  |_||_______|',
                        \ ' __    _  _______  _______  __   __  ___  __   __      ',
                        \ '|  |  | ||       ||       ||  | |  ||   ||  |_|  |     ',
                        \ '|   |_| ||    ___||   _   ||  |_|  ||   ||       |     ',
                        \ '|       ||   |___ |  | |  ||       ||   ||       |     ',
                        \ '|  _    ||    ___||  |_|  ||       ||   ||       |     ',
                        \ '| | |   ||   |___ |       | |     | |   || ||_|| |     ',
                        \ '|_|  |__||_______||_______|  |___|  |___||_|   |_|     ',
                        \ ] 

" let g:startify_custom_header = [
        " \ '        _   ___    ________          __   ',
        " \ '       / | / / |  / / ____/___  ____/ /__ ',
        " \ '      /  |/ /| | / / /   / __ \/ __  / _ \',
        " \ '     / /|  / | |/ / /___/ /_/ / /_/ /  __/',
        " \ '    /_/ |_/  |___/\____/\____/\__,_/\___/ ',
        " \]
                                      
let g:startify_session_dir = '~/.config/nvim/session'


let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Documents/Dev_Projects/',
            \ '~/Documents/dev_other/',
            \ ]

let g:startify_enable_special = 0
