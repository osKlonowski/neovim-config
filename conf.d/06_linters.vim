" linters.vim - setup for linters, syntax checkers and the like

Plug 'dense-analysis/ale'
  " enable airline integration
  let g:airline#extensions#ale#enabled=1
  " do not lint when editing, only on save/enter/normal-mode
  let g:ale_lint_on_text_changed='normal'
  " change sign column highlight
  let g:ale_change_sign_column_color=1
  " leave gutter always open
  let g:ale_sign_column_always=1
" Set this variable to 1 to fix files when you save them.

let g:ale_fix_on_save = 1

let g:ale_linters = {
      \ 'javascript': ['eslint'],
      \ 'typescript': ['eslint', 'typescript-language-server'],
      \ 'typescriptreact': ['eslint', 'typescript-language-server'],
      \   'elixir': ['credo', 'mix'],
        \   'elm': ['elm-format', 'elm-make'],
        \   'haskell': ['stack-ghc-mod', 'hlint'],
        \   'ruby': ['rubocop', 'ruby', 'reek'],
        \   'rust': ['rustfmt', 'cargo'],
        \   'python': ['pycodestyle', 'mypy', 'pylint'],
        \   'terraform': ['fmt'],
      \}

" In ~/.vim/vimrc, or somewhere similar.
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'typescriptreact': ['prettier'],
\}
