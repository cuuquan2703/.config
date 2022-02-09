"Move in Insert Mode
inoremap <A-s> <Down>
inoremap <A-a> <Left>
inoremap <A-w> <Up>
inoremap <A-d> <Right>

"Duplicate line
nnoremap <C-d> :copy .<CR>
inoremap <C-d> <ESC> :copy .<CR> a <Bs>

  "Goto end/begin of a line in InsertMode
inoremap <C-e> <ESC> $i<Right>
inoremap <C-q> <ESC> 0i<Up>

  "Delete entire line InsertMode
inoremap <C-x> <ESC> dd i


"Switch to insertmode
nnoremap <space> a

"Go to file in vertical spilttab
map <C-F12> :vertical wincmd f<CR> :wincmd x <CR> :wincmd l <CR>

   "move line up/down
nnoremap <silent> <C-Up> :call <SID>swap_up()<CR>
nnoremap <silent> <C-Down> :call <SID>swap_down()<CR>
inoremap <silent> <C-Up> <ESC>  :call <SID>swap_up()<CR> 
inoremap <silent> <C-Down> <ESC>  :call <SID>swap_down()<CR> 

"resize splittab
nnoremap <silent> <C-Right> :vertical resize +5<CR>
nnoremap <silent> <C-Left> :vertical resize -5<CR>

"Function
function! s:swap_lines(n1, n2)
    let line1 = getline(a:n1)
    let line 2 = getline(a:n2)
    call setline(a:n1, line2)
    call setline(a:n2, line1)
endfunction

function! s:swap_up()
    let n = line('.')
    if n == 1
        return
    endif

    call s:swap_lines(n, n - 1)
    exec n - 1
endfunction

function! s:swap_down()
    let n = line('.')
    if n == line('$')
        return
    endif

    call s:swap_lines(n, n + 1)
    exec n + 1
endfunction
