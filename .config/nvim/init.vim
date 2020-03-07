" -----------------------------------------------------------------------------
" Manage plugins
" -----------------------------------------------------------------------------
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')
Plug 'dracula/vim', {'as': 'dracula'}
Plug 'editorconfig/editorconfig-vim'
Plug 'itchyny/lightline.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'matveyt/vim-modest'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'NLKNguyen/papercolor-theme'
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-vinegar'

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
call plug#end()

" -----------------------------------------------------------------------------
" Space is my leader
" -----------------------------------------------------------------------------
let mapleader=' '

" -----------------------------------------------------------------------------
" Use <C-l> to escape
" -----------------------------------------------------------------------------
inoremap <C-l> <Esc>
xnoremap <C-l> <Esc>

if has('nvim')
  " Escape to normal mode in the terminal
  tnoremap <C-l> <C-\><C-n>
endif

" -----------------------------------------------------------------------------
" Move the current line up or down
" -----------------------------------------------------------------------------
nnoremap <C-j> :silent! m+<CR>
nnoremap <C-k> :silent! m-2<CR>

" -----------------------------------------------------------------------------
" Dayum gurl, you purdy
" -----------------------------------------------------------------------------
set background=light
colorscheme modest

" Show cursor position in status bar
set ruler

" Don't highlight the current cursor column or line
set nocursorcolumn
set nocursorline

" Always display the status line
set laststatus=2

" Don't beep me, bro
set visualbell

" Display column guides
if exists('+colorcolumn')
  set colorcolumn=80,120
endif

" -----------------------------------------------------------------------------
" Neovim niceties
" -----------------------------------------------------------------------------
if has('nvim')
  " Show the effects of a command (such as search-replace) inline, as you type
  set inccommand=nosplit
endif

" -----------------------------------------------------------------------------
" GUI niceties
" -----------------------------------------------------------------------------
if exists('+guicursor')
  " @see help 'guicursor'
  " Use an underscore in all non-insert modes
  set guicursor=a:hor3

  " Use a pipe in insert mode
  set guicursor=i:ver50

  " Chill, blinking cursor
  set guicursor=a:blinkwait1500-blinkon750-blinkoff750
endif

if exists('+guioptions')
  " Remove scrollbars  
  set guioptions=
endif

if exists('+guifont')
  set guifont=JetBrains\ Mono:h14
  set linespace=12
endif

if has('termguicolors')
  set termguicolors
endif

" -----------------------------------------------------------------------------
" Spaces, not tabs
" -----------------------------------------------------------------------------
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" -----------------------------------------------------------------------------
" Use relative line numbers
" -----------------------------------------------------------------------------
set number relativenumber
set numberwidth=4

" -----------------------------------------------------------------------------
" Show invisibles
" -----------------------------------------------------------------------------
set list
set listchars=tab:▸\ ,trail:•

" -----------------------------------------------------------------------------
" Manage splits
" -----------------------------------------------------------------------------
set splitright

" -----------------------------------------------------------------------------
" Highlight searches
" -----------------------------------------------------------------------------
" When there is a previous search pattern, highlight all the matches
set hlsearch

" Show search pattern matches as you type
set incsearch

" Set the search highlight colours
highlight Search guibg=Yellow guifg=Black

" Clear search highlights by pressing the space bar twice
nnoremap <silent><Space> :nohlsearch<Bar>:echo<CR>

" -----------------------------------------------------------------------------
" Configure ctags
" -----------------------------------------------------------------------------
set tags+=.git/tags

" -----------------------------------------------------------------------------
" Fix minor annoyances
" -----------------------------------------------------------------------------
" Fix delay after pressing escape
" @see https://www.johnhawthorn.com/2012/09/vi-escape-delays/
set timeoutlen=1000
set ttimeoutlen=0
