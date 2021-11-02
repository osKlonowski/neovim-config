nnoremap <leader>a :lua require("harpoon.mark").add_file()<CR>
nnoremap <C-e> :lua require("harpoon.ui").toggle_quick_menu()<CR>

" Ctrl -> h (1) t (2) n (3) s (4)
nnoremap <C-1> :lua require("harpoon.ui").nav_file(1)<CR>
nnoremap <C-2> :lua require("harpoon.ui").nav_file(2)<CR>
nnoremap <C-3> :lua require("harpoon.ui").nav_file(3)<CR>
nnoremap <C-4> :lua require("harpoon.ui").nav_file(4)<CR>
" nnoremap <C-5> :lua require("harpoon.ui").nav_file(4)<CR>
