" General settings
  syntax on                                         " turn on syntax
  let mapleader = ","                               " map leader to ','
  filetype indent on                                " indent based on file type
  set encoding=utf8                                 " UTF8 encoding of file
  set number                                        " normal line numbers
  set ttimeoutlen=10                                " used for key code delays
  set scrolloff=10                                  " always keep lines at end
  set mouse=a                                       " enable mouse movements
  set nowrap                                        " lines don't wrap
  set noswapfile                                    " no stupid .swp file
  set autoindent                                    " turns on auto indent
  set smartindent                                   " does (mostly) right indenting
  set tabstop=2                                     " tabs are at proper location
  set shiftwidth=2                                  " one tab are 2 spaces
  set expandtab                                     " tabs are actually spaces
  set smarttab                                      " tabs fit with tabstops
  set hlsearch                                      " highlight all matching text
  set incsearch                                     " enable incremental search
  set ignorecase                                    " /the -> the/The/THE/tHe
  set smartcase                                     " goes together with ignorecase

" General mappings
  inoremap <C-e> <C-o>A
  nmap <silent> <leader><space> :noh<CR>
  map <leader>s :setlocal spell! spelllang=en_us<CR>
  nnoremap <LEADER>u :UndotreeToggle<cr>
  noremap! <C-BS> <C-w>
  noremap! <C-h> <C-w>
  noremap <C-s> :w<CR>
  inoremap <C-s> <esc>:w<CR>
  noremap <C-c> :q<CR>

" Vundel plugin manager config
  set nocompatible                                  " required for vundle
  filetype off                                      " required for vundle
  set rtp+=~/.vim/bundle/Vundle.vim                 " runtime path
  call vundle#begin('~/.vim/bundle')                " START ADDING PLUGINS
  Plugin 'VundleVim/Vundle.vim'                     " main vundle plugin
  Plugin 'dikiaap/minimalist'                       " style
  Plugin 'scrooloose/nerdtree'                      " document tree
  call vundle#end()                                 " STOP ADDING PLUGINS
  filetype plugin indent on                         " turn back on again

" Theme settings
  let g:spacegray_termcolors = 256
  set t_Co=256
  colorscheme minimalist
  let g:spacegray_underline_search = 1
  hi VertSplit ctermbg=234 ctermfg=234

" Using vim tree to make vim more user friendly
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif"
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
  map <LEADER>, :NERDTreeToggle<CR>
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  let g:NERDTreeShowIgnoredStatus = 1
  let g:NERDTreeWinSize = 30
  let NERDTreeShowHidden = 1

" Puts you in insertmode when file is gitcommit
  autocmd FileType gitcommit  exec 'au VimEnter * startinsert'
