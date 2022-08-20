local g = vim.g
local opt = vim.opt
local api = vim.api
local cmd = api.nvim_command
local fn = vim.fn

--opt.nobackup = true
--opt.nowritebackup = true

--opt.updatetime = 300
--opt.signcolumn = "yes"

local function register_mappings(mappings, default_options)
	for mode, mode_mappings in pairs(mappings) do
		for _, mapping in pairs(mode_mappings) do
			local options = #mapping == 3 and table.remove(mapping) or default_options
			local prefix, cmd = unpack(mapping)
			pcall(vim.api.nvim_set_keymap, mode, prefix, cmd, options)
		end
	end
end

function _G.check_back_space()
  local col = fn.col('.') - 1
  if col == 0 or fn.getline('.'):sub(col,col):match('%s') then
   return true
  else
    return false
  end
end

function _G.show_documentations()
  local cw = fn.expand('<cword>')
    if fn.index({ 'vim', 'help' }, vim.bo.filetype) >= 0 then
        cmd('h ' .. cw)
    elseif api.nvim_eval('coc#rpc#ready()') then
        fn.CocActionAsync('doHover')
    else
        cmd('!' .. vim.o.keywordprg .. ' ' .. cw)
    end
end



local mappings = {
	i = { -- Insert mode
        { "<TAB>", 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()',{expr = true}},
        { "<S-TAB>", 'coc#pum#visible() ? coc#pum#prev(1) : "<C-h>"', { expr = true } },
        {"<CR>",'coc#pum#visible() ? coc#pum#confirm() : "<CR>"',{expr =true}},
        { "<C-SPACE>", 'coc#refresh()', { expr = true } },
        {'<C-f>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<Right>"', { expr = true, silent = true, nowait = true }},
        {'<C-b>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<Left>"', { expr = true, silent = true, nowait = true }},
  --      {'<CR>',  'v:lua.MUtils.completion_confirm()', {expr = true, noremap = true}}
	},
	n = { -- Normal mode
        { "K", '<CMD>lua _G.show_documentations()<CR>', { silent = true } },
        {'[g', '<Plug>(coc-diagnostic-prev)', { noremap = false }},
        {']g', '<Plug>(coc-diagnostic-next)', { noremap = false }},
        {'gb', '<Plug>(coc-cursors-word)', { noremap = false }},
        {'gd', '<Plug>(coc-definition)', { noremap = false }},
        {'gy', '<Plug>(coc-type-definition)', { noremap = false }},
        {'gi', '<Plug>(coc-implementation)', { noremap = false }},
        {'gr', '<Plug>(coc-references)', { noremap = false }},
        { "rn", '<Plug>(coc-rename)'},
        { "<leader>f", '<Plug>(coc-format-selected)', { silent = true } },
        {'<C-F>', 'coc#float#has_scroll() ? coc#float#scroll(1) : "<C-F>"', { expr = true, silent = true, nowait = true }},
        {'<C-B>', 'coc#float#has_scroll() ? coc#float#scroll(0) : "<C-B>"', { expr = true, silent = true, nowait = true }},
        {'<C-x>','<Plug>(coc-range-select)'},
	},
    o = {
      { "if", '<Plug>(coc-funcobj-i)', { silent = true } },
      { "af", '<Plug>(coc-funcobj-a)', { silent = true } },
      { "ic", '<Plug>(coc-classobj-i)', { silent = true } },
      { "ac", '<Plug>(coc-classobj-a)', { silent = true } },
  },
	t = { -- Terminal mode
	},
	v = { -- Visual/Select mode
	},
	x = { -- Visual mode
    { "<leader>a", '<CMD>lua _G.show_documentations()<CR>', { silent = true } },
    { "<leader>f", '<Plug>(coc-format-selected)', { silent = true } },
    { "if", '<Plug>(coc-funcobj-i)', { silent = true } },
    { "af", '<Plug>(coc-funcobj-a)', { silent = true } },
    { "ic", '<Plug>(coc-classobj-i)', { silent = true } },
    { "ac", '<Plug>(coc-classobj-a)', { silent = true } },
    {'<C-x>','<Plug>(coc-range-select)'},
	},
	[""] = {
	},
}

vim.cmd([[
    " Add `:Format` command to format current buffer.
    command! -nargs=0 Format :call CocAction('format')
    " Add `:Fold` command to fold current buffer.
    command! -nargs=? Fold :call     CocAction('fold', <f-args>)
    " Add `:OR` command for organize imports of the current buffer.
    command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')
]])


register_mappings(mappings, { silent = true, noremap = true })

