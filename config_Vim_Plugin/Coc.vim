nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all iagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> rn <Plug>(coc-rename)

nnoremap R :CocCommand <CR>

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

nmap <Leader>f :Format <CR>

" Apply AutoFix to problem on the current line.
nmap <leader>fc  <Plug>(coc-fix-current)
d
