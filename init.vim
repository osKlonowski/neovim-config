"" first things first: mapping leader, textwidth and such
"
" setting <leader> to space
let mapleader=' '

tnoremap <Esc> <C-\><C-n>

" set textwidth to 80 cols (oldschool here)
set textwidth=80

" set encoding to UTF-8 no matter what
set encoding=utf-8


" bootstrapping vim-plug
call plug#begin('~/.config/nvim/plugins')

" load plugin definition and extra configuration
runtime! conf.d/*.vim
Plug 'ryanoasis/vim-devicons'
Plug 'neovim/nvim-lspconfig'
" Auto Completion "
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'windwp/nvim-autopairs'

Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'ap/vim-css-color'
Plug 'ThePrimeagen/harpoon'
Plug 'mattn/emmet-vim'

" initialize plugin system
call plug#end()

luafile ~/Documents/dev_other/nvim/luas/00_native_lsp.lua
luafile ~/Documents/dev_other/nvim/luas/01_cmp.lua
luafile ~/Documents/dev_other/nvim/luas/02_telescope.lua
luafile ~/Documents/dev_other/nvim/luas/04_commenter.lua
" luafile ~/Documents/dev_other/nvim/luas/03_harpoon.lua

" load colorscheme
runtime! colors.vim

" autocmd FileType TelescopePrompt call deoplete#custom#buffer_option('auto_complete', v:false)

" enable plugin/indentation based on filetype detection
filetype plugin indent on

" enable syntax highlight
syntax enable

" for Dart Language Server Config
let g:dart_style_guide = 2
let g:dart_format_on_save = 1

" improving redrawing smoothness
set ttyfast
set lazyredraw

" interface and basic behavior
set noincsearch
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

" disable neovim python2/nodejs providers
let g:loaded_python_provider=1
let g:loaded_node_provider=1
