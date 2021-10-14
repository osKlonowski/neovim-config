nnoremap <C-p> :lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>sf :lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>sg :lua require('telescope.builtin').live_grep()<CR>
nnoremap <leader>sb :lua require('telescope.builtin').buffers()<CR>
nnoremap <leader>vh :lua require('telescope.builtin').help_tags()<CR>

nnoremap <leader>sc :lua require('telescope.builtin').lsp_code_actions()<CR>
nnoremap <leader>ss :lua require('telescope.builtin').grep_string()<CR>
nnoremap <leader>se :lua require('telescope.builtin').file_browser()<CR>
nnoremap <leader>si :lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>
