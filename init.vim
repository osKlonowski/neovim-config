"" first things first: mapping leader, textwidth and such
"
" setting <leader> to space
let mapleader=' '

" shift no longer required
nnoremap ; :

tnoremap <Esc> <C-\><C-n>

" set textwidth to 80 cols (oldschool here)
set textwidth=80

" set encoding to UTF-8 no matter what
set encoding=utf-8


" bootstrapping vim-plug
call plug#begin('~/.config/nvim/plugins')

" load plugin definition and extra configuration
runtime! conf.d/*.vim
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" initialize plugin system
call plug#end()

luafile ~/Documents/dev_other/nvim/luas/00_native_lsp.lua
luafile ~/Documents/dev_other/nvim/luas/01_compe.lua
luafile ~/Documents/dev_other/nvim/luas/02_telescope.lua

" load colorscheme
runtime! colors.vim

autocmd FileType TelescopePrompt call deoplete#custom#buffer_option('auto_complete', v:false)

" enable plugin/indentation based on filetype detection
filetype plugin indent on

" enable syntax highlight
syntax enable
inoremap jk <Esc>
" remove buffer
nnoremap <leader>d :bd<CR>

" Keeping it centered remappings
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z
nnoremap <C-j> :cnext<CR>zzzv

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u

" for Dart Language Server Config
let g:dart_style_guide = 2
let g:dart_format_on_save = 1

" improving redrawing smoothness
set ttyfast
set lazyredraw

" interface and basic behavior
set relativenumber
set tabstop=4
set guicursor=
set noerrorbells
set nu
set nowrap
set nocompatible
set bs=2              " same as :set backspace=indent,eol,start
set mousehide
set nuw=5
set hidden            " change buffer without saving
set ruler
set scrolloff=8       " lines above/below cursor
set history=750
set fileformats=unix,mac,dos
set cursorline
set autoread          " automatically reloads file if changed outside
set splitbelow        " split new window below current window
set splitright        " split new window right of the current one
set nojoinspaces      " use just one space to join strings
set formatoptions+=j  " delete comment when joining commented lines
set nostartofline     " do not move cursor back to start of line when moving
set signcolumn=yes

" if on mac, uses option-key as meta <M>; allow more key combos
if exists('+macmeta')
  set macmeta
endif

" tab/indentation configuration
set softtabstop=4
set shiftwidth=2
set expandtab
set smarttab
set autoindent
set smartindent

" tab completion
set wildmode=longest:full,full
set wildmenu
set wildignore+=*.o,*~,.lo,*.swp,*.pyc,.git,*.log,*.zip,*.so,*/tmp/*
set wildignore+=log/**,tmp/**,*DS_Store*,.hg

" search pattern highlight/incremental
set ignorecase
set smartcase
set infercase
set showmatch
set incsearch
set nohlsearch

" backup and swap settings
set nobackup
set directory=~/.config/nvim/tmp

" enable the matchit.vim shipped with vim
runtime! macros/matchit.vim

" few useful shortcuts
command! Rehash source ~/.config/nvim/init.vim

" close current buffer
nmap <leader>x :close<cr>

" clear search highlights
nmap <silent>,/ :nohls<cr>

" make the arrow keys switch between splits
map <up>    <C-w>k
map <down>  <C-w>j
map <right> <C-w>l
map <left>  <C-w>h

" disable neovim python2/nodejs providers
let g:loaded_python_provider=1
let g:loaded_node_provider=1
