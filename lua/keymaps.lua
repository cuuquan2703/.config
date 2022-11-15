local keymap = vim.keymap
keymap.set('n','x','_x')

--Move in Insert Mode
keymap.set('i','<A-s>','<Down>')
keymap.set('i','<A-a>','<Left>')
keymap.set('i','<A-w>','<Up>')
keymap.set('i','<A-d>','<Right>')

--Duplicate line
keymap.set('','<C-d>','<S-v>yp')

--Select all
keymap.set('n','<C-a>','gg<S-v>G',{silent=true})

--Move line up/down
keymap.set('n','<C-Up>',':m .-2<CR>==',{silent=true})
keymap.set('n','<C-Down>',':m .+1<CR>==',{silent=true})
keymap.set('i','<C-Up>',':m .-2<CR>==',{silent=true})
keymap.set('i','<C-Down>',':m .+1<CR>==',{silent=true})

--Save
keymap.set('n','<C-s>',':w<CR>',{silent=true})
keymap.set('i','<C-s>','<ESC>:w<CR>',{silent=true})
--Undo
keymap.set('i','<C-z>','<ESC>:undo<CR>i',{silent=true})
--Save and quit
keymap.set('n','wq',':wq<CR>')
--Newtab
keymap.set('n','te',':tabedit<CR>',{silent=true})
keymap.set('n','tc',':tabclose<CR>',{silent=true})

--Split Window
keymap.set('n','ss',':split<CR><C-w>w',{silent=true})
keymap.set('n','sv',':vsplit<CR><C-w>w',{silent=true})

-- Move window
keymap.set('n', '<Space>', '<C-w>w')
keymap.set('', 'sh', '<C-w>h')
keymap.set('', 'sk', '<C-w>k')
keymap.set('', 'sj', '<C-w>j')
keymap.set('', 'sl', '<C-w>l')

-- Resize window
keymap.set('n', '<C-w><left>', '<C-w><')
keymap.set('n', '<C-w><right>', '<C-w>>')
keymap.set('n', '<C-w><up>', '<C-w>+')
keymap.set('n', '<C-w><down>', '<C-w>-')

--Swap two line
keymap.set('n','<C-Up>',':m-2<CR>',{silent=true})
keymap.set('n','<C-Down>',':m+1<CR>',{silent=true})
keymap.set('i','<C-Up>','<Esc>:m-2<CR>i',{silent=true})
keymap.set('i','<C-Down>','<Esc>:m+1<CR>i',{silent=true})

--Swicth to InserMode
keymap.set('n','<space>','a')

