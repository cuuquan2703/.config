call plug#begin('~/AppData/Local/nvim/plug')
"{{Theme}}
"Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'overcache/NeoSolarized'
""{{File Browser}}
Plug 'preservim/nerdTree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

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

"{{ Code Syntax Highlight
Plug 'yuezk/vim-js'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jackguo380/vim-lsp-cxx-highlight'

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

"{{ LSP
Plug 'nvim-lua/completion-nvim'
"{{Debug
Plug 'puremourning/vimspector'

"{{ GIT
Plug 'tpope/vim-fugitive'

call plug#end()
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

"s e t u p   plugin

let nvim_dir = '~\AppData\Local\nvim\config_Vim_Plugin\'
execute 'source '.nvim_dir.'ExtraKey.vim'
execute 'source '.nvim_dir.'nerTree.vim'
execute 'source '.nvim_dir.'Solarize.vim'
execute 'source '.nvim_dir.'fzf.vim'
execute 'source '.nvim_dir.'autocompletion.vim'
execute 'source '.nvim_dir.'scrollBar.vim'
execute 'source '.nvim_dir.'lightline.vim'
execute 'source '.nvim_dir.'Coc.vim'
execute 'source '.nvim_dir.'CloseTag.vim'
"execute 'source'.nvim_dir.'Extra.vim'
execute 'source'.nvim_dir.'Tab.vim'
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

