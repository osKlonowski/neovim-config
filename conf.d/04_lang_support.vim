" language support
" support for most commonly used proglang syntax and indentation
Plug 'dart-lang/dart-vim-plugin'
Plug 'sheerun/vim-polyglot'
  "" ruby support (vim-ruby)
  let g:ruby_indent_block_style='do'
  let g:ruby_indent_assignment_style='variable'
  let g:rubycomplete_rails=1
  let g:rubycomplete_classes_in_global=1
  let g:rubycomplete_include_object=1
  let g:rubycomplete_include_objectspace=1
  let g:rubycomplete_use_bundler=1

  "" haskell support (neovimhaskell/haskell-vim)
  " indent 'where' block two spaces under previous body
  let g:haskell_indent_before_where=2
  " allow a second case indent style (see haskell-vim README)
  let g:haskell_indent_case_alternative=1
  " only next under 'let' if there's an equals sign
  let g:haskell_indent_let_no_in=0

  "" elm support (ElmCast/elm-vim)
  let g:elm_format_autosave=1
  let g:elm_detailed_complete=1
  let g:elm_syntastic_show_warnings=1
  let g:elm_format_fail_silently=1
  let g:elm_browser_command='open'
  let g:elm_make_show_warnings=1
  let g:elm_setup_keybindings=1

  "" rust support (rust-lang/rust.vim)
  let g:rustfmt_autosave=1

  "" python support (vim-python/python-syntax)
  let g:python_highlight_class_vars=1
  let g:python_highlight_indent_errors=1

  "" terraform support (hashivim/vim-terraform)
  let g:terraform_align=1

  "" markdown (plasticboy/vim-markdown)
  let g:vim_markdown_folding_disabled=1


" Plug 'docker/docker', {'rtp': '/contrib/syntax/vim/'}

