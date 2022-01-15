call plug#begin('~/AppData/Local/nvim/plug')

"{{Theme}}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
"{{File Browser}}
Plug 'preservim/nerdTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

"{{File search
Plug 'junegunn/fzf', {'do' : { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"{{ Status Bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"{Scroll-Bar
Plug 'petertriho/nvim-scrollbar'
"{{ Code intelligense
Plug 'neoclide/coc.nvim', {'branch':'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
"{{ Code Syntax Highlight
Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jackguo380/vim-lsp-cxx-highlight'

"{{ LSP
Plug 'nvim-lua/completion-nvim'

"{{Debug
Plug 'puremourning/vimspector'

"{{ GIT
Plug 'tpope/vim-fugitive'

call plug#end()

"set relativenumber
set autowrite
set numberwidth=5
set number
syntax on
set ignorecase
set termguicolors
set background=dark
let g:tokyonight_style = "storm"
let g:tokyonight_italic_functions = 1
let g:tokyonight_sidebars = [ "qf", "vista_kind", "terminal", "packer" ]
let g:tokyonight_transparent = 1

let g:tokyonight_colors = {
  \ 'hint': 'orange',
  \ 'error': '#ff0000'
\ }

colorscheme tokyonight

"setup plugin
let nvim_dir = '~\AppData\Local\nvim\config_Vim_Plugin\'
execute 'source '.nvim_dir.'nerTree.vim'
execute 'source '.nvim_dir.'Solarize.vim'
execute 'source '.nvim_dir.'fzf.vim'
execute 'source '.nvim_dir.'autocompletion.vim'
"execute 'source '.nvim_dir.'lspconfig.vim'
execute 'source '.nvim_dir.'scrollBar.vim'
execute 'source'.nvim_dir.'lightline.vim'
execute 'source'.nvim_dir.'Coc.vim'

nnoremap <F8> <Plug>(coc-codeaction)  
