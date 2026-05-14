" ==================================================
" Plugin Management
" ==================================================
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'maxmellon/vim-jsx-pretty'
call plug#end()

" ==================================================
" Basic Settings
" ==================================================
set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8
set number relativenumber
set signcolumn=yes
set termguicolors
set background=dark
colorscheme catppuccin_mocha

" ==================================================
" Indentation
" ==================================================
set tabstop=4 shiftwidth=4 expandtab smartindent
autocmd FileType javascript,typescript,typescriptreact,javascriptreact,css,scss,json,html,markdown,graphql setlocal tabstop=2 shiftwidth=2

" ==================================================
" Search
" ==================================================
set hlsearch incsearch ignorecase smartcase

" ==================================================
" Interface
" ==================================================
set laststatus=2
set cmdheight=2
set showtabline=2
set wildmenu wildignorecase
set clipboard=unnamedplus
set mouse=a
set noswapfile

" ==================================================
" Plugin Settings
" ==================================================
let NERDTreeShowHidden=1

" ==================================================
" Key Mappings
" ==================================================
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <Esc><Esc> :<C-u>nohlsearch<CR>
nmap <silent> ga <Plug>(coc-codeaction-cursor)

" ==================================================
" CocConfig Extensions
" ==================================================
let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-tsserver',
  \ 'coc-pyright',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-css',
  \ 'coc-html',
  \ 'coc-html-css-support',
  \ 'coc-tailwindcss',
  \ 'coc-clangd',
  \ 'coc-go',
  \ 'coc-java',
  \ 'coc-kotlin',
  \ 'coc-docker',
  \ 'coc-sh',
  \ 'coc-sql',
  \ 'coc-markdownlint'
  \ ]
