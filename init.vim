set background=dark
set smartindent
set smartcase
set expandtab
set tabstop=4
filetype plugin indent on
syntax on
set cursorline
set nu
set number
set noswapfile
set showcmd
set ruler
set incsearch
set hlsearch
set hidden
set list
set syntax=whitespace
set listchars=eol:$,tab:>-,trail:~
set modeline
set mouse=a
set splitbelow splitright
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set inccommand=split
set title
set wildmenu
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'f-person/git-blame.nvim'
Plug 'puremourning/vimspector'
Plug 'wbthomason/packer.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/nvim-treesitter-textobjects'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'nvim-lua/plenary.nvim'
Plug 'jghauser/mkdir.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'RRethy/vim-illuminate'
Plug 'gennaro-tedesco/nvim-jqx'
Plug 'romgrk/barbar.nvim'
Plug 'sunjon/shade.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()
" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
let g:airline_powerline_fonts = 1
let NERDTreeShowHidden=1
lua require('init')
