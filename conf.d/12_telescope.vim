nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>sf :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>sg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>sb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>
" nnoremap <leader>vrc :lua require('12_telescope').search_dotfiles()<CR>
