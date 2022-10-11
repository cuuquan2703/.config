vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.wo.relativenumber = true

vim.opt.cursorline = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'pwsh'
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.mouse = 'a'

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
vim.g.dracula_colorterm = 0
vim.cmd [[ colorscheme dracula ]]
vim.g.dracula_transparent = 1

--filenames like *.xml, *.html, *.xhtml, ...
--These are the file extensions where this plugin is enabled.

vim.g.closetag_filenames = '*.html,*.xhtml,*.phtml'

--filenames like *.xml, *.xhtml, ...
--This will make the list of non-closing tags self-closing in the specified files.

vim.g.closetag_xhtml_filenames = '*.xhtml,*.jsx'

--filetypes like xml, html, xhtml, ...
--These are the file types where this plugin is enabled.

vim.g.closetag_filetypes = 'html,xhtml,phtml'

--filetypes like xml, xhtml, ...
--This will make the list of non-closing tags self-closing in the specified files.

vim.g.closetag_xhtml_filetypes = 'xhtml,jsx'

--integer value [0|1]
--This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)

vim.g.closetag_emptyTags_caseSensitive = 1

--dict
--Disables auto-close if not in a "valid" region (based on filetype)

vim.g.closetag_regions = {
      {'"typescript.tsx": "jsxRegion,tsxRegion"'},
      {'"javascript.jsx": "jsxRegion"'},
      {'"typescriptreact": "jsxRegion,tsxRegion"'},
      {'"javascriptreact": "jsxRegion"'},
    }

--Shortcut for closing tags, default is '>'

vim.g.closetag_shortcut = '>'

--Add > at current position without closing the current tag, default is ''

vim.g.closetag_close_shortcut = '<leader>>'

