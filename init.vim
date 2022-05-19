call plug#begin('~/AppData/Local/nvim/plug')
"{{Theme}
Plug 'vim-python/python-syntax'
Plug 'overcache/NeoSolarized'
""{{File Browser}}
Plug 'preservim/nerdTree' |
 \ Plug 'Xuyuanp/nerdtree-git-plugin' |
 \ Plug 'ryanoasis/vim-devicons'
"Sayonara
Plug 'mhinz/vim-sayonara',{'on':'Sayonara'}
"{{File search
Plug 'junegunn/fzf', {'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
"{{ Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Tab
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
"{Scroll-Bar
Plug 'petertriho/nvim-scrollbar'
"{{ Code intelligense
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/nvim-telescope/telescope-fzy-native.nvim'
Plug 'https://github.com/sharkdp/fd'
"{{ Code Syntax Highlight
Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'karb94/neoscroll.nvim'
"Snippet
Plug 'SirVer/ultisnips'
Plug 'mlaursen/vim-react-snippets'
"COC plugin
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'neoclide/coc-snippets', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-eslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-tslint', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-css', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc-lists', {'do': 'yarn install --frozen-lockfile'} " mru and stuff
Plug 'neoclide/coc-highlight', {'do': 'yarn install --frozen-lockfile'} " color highlighting
Plug 'Yggdroot/indentLine' 
Plug 'kien/ctrlp.vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'uiiaoo/java-syntax.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'ncm2/ncm2'
"Plug 'roxma/nvim-yarp'
"Plug 'ncm2/ncm2-bufword'
"Plug 'ncm2/ncm2-path'

"{{ LSP
"{{ LSP
"{{Debug
"{{Debug

"{{ GIT
Plug 'tpope/vim-fugitive'

call plug#end()
set completeopt=noinsert,menuone,noselect
"set relativenumber
set autowrite
set number
set cursorline
syntax enable
set ignorecase
set termguicolors
set winblend=0
set wildoptions=pum
set pumblend=5
set background=dark
let g:neosolarized_termtrans=1
runtime ~/.config/nvim/colors/NeoSolarized.vim
colorscheme NeoSolarized
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set list
set listchars=tab:▸\ ,trail:·
set clipboard=unnamedplus
set encoding=UTF-8
syntax on
filetype plugin on
"s e t u p   plugin
lua require('neoscroll').setup()
let nvim_dir = '~\AppData\Local\nvim\config_Vim_Plugin\'
execute 'source '.nvim_dir.'ExtraKey.vim'
execute 'source '.nvim_dir.'nerTree.vim'
execute 'source '.nvim_dir.'Solarize.vim'
execute 'source '.nvim_dir.'fzf.vim'
"execute 'source '.nvim_dir.'autocompletion.vim'
execute 'source '.nvim_dir.'scrollBar.vim'
execute 'source '.nvim_dir.'lightline.vim'
execute 'source '.nvim_dir.'Coc.vim'
execute 'source '.nvim_dir.'CloseTag.vim'
"execute 'source'.nvim_dir.'Extra.vim'
execute 'source'.nvim_dir.'Tab.vim'
execute 'source'.nvim_dir.'VimAirline.vim'
execute 'source'.nvim_dir.'Telescope.vim'
execute 'source'.nvim_dir.'Explorer.vim'
execute 'source'.nvim_dir.'NCM.vim'
execute 'source'.nvim_dir.'NerdTree.vim'
execute 'source'.nvim_dir.'Indent.vim'
execute 'source'.nvim_dir.'Javacompletion.vim'
"execute 'source'.nvim_dir.'JAVA.vim'
"Tab
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
"go tab by number
nnoremap 1 1gt
nnoremap 2 2gt
nnoremap 3 3gt
nnoremap 4 4gt
nnoremap 5 5gt
nnoremap 6 6gt
nnoremap 7 7gt
nnoremap 8 8gt
nnoremap 9 9gt
nnoremap 0 :tablast<CR>
nnoremap <C-q> :BufferClose<CR>
map <C-s> :w<CR>
":autocmd BufEnter * call ncm2#enable_for_buffer()
"let g:UltiSnipsExpandTrigger = '<C-j>'
"let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsExpandTrigger="<CR>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let java_highlight_functions = 1
let g:python_highlight_all = 1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1
let g:cpp_experimental_simple_template_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_concepts_highlight = 1
