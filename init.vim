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

inoremap <A-s> <Down>
inoremap <A-a> <Left>
inoremap <A-w> <Up>
inoremap <A-d> <Right>


"Duplicate line
nnoremap <C-d> :copy .<CR>
inoremap <C-d> <ESC> :copy .<CR> i

inoremap <C-x> <ESC> dd i
inoremap <C-s> <ESC>
nnoremap <C-s> i

"s e t u p   plugin
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
"map <S-Down> <S-j>
"map <S-Up> <S-k>

