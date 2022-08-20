vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "markdown" },
  callback = function()
    vim.cmd[[ 
    inoremap <buffer> ,f <Esc>/<++><CR>:nohlsearch<CR>"_c4l
    inoremap <buffer> <c-e> <Esc>/<++><CR>:nohlsearch<CR>"_c4l
    inoremap <buffer> ,w <Esc>/ <++><CR>:nohlsearch<CR>"_c5l<CR>
    inoremap <buffer> ,n ---<Enter><Enter>
    inoremap <buffer> ,b **** <++><Esc>F*hi
    inoremap <buffer> ,s ~~~~ <++><Esc>F~hi
    inoremap <buffer> ,i ** <++><Esc>F*i
    inoremap <buffer> ,d `` <++><Esc>F`i
    inoremap <buffer> ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
    inoremap <buffer> ,m - [ ] 
    inoremap <buffer> ,p ![](<++>) <++><Esc>F[a
    inoremap <buffer> ,a [](<++>) <++><Esc>F[a
    inoremap <buffer> ,1 #<Space><Enter><++><Esc>kA
    inoremap <buffer> ,2 ##<Space><Enter><++><Esc>kA
    inoremap <buffer> ,3 ###<Space><Enter><++><Esc>kA
    inoremap <buffer> ,4 ####<Space><Enter><++><Esc>kA
    inoremap <buffer> ,l --------<Enter>
     ]]
  end })


vim.cmd "autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif"

vim.cmd [[ 
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
]]