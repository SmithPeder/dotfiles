" Install Plug if it's not installed
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

" Plugins
  call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-rooter'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'haya14busa/incsearch.vim'
    Plug 'Raimondi/delimitMate'
    Plug 'airblade/vim-gitgutter'
    Plug 'smithpeder/vim-hybrid'
  call plug#end()
  
" General settings
  set backspace=indent,eol,start                    " MUST HAVE OSX DON'T REMOVE
  syntax on                                         " turn on syntax
  let mapleader = ","                               " map leader to ','
  set encoding=utf8                                 " UTF8 encoding of filen
  set number                                        " normal line numbers
  set ttimeoutlen=10                                " used for key code delays
  set scrolloff=10                                  " always keep lines at end
  set mouse=a                                       " enable mouse movements
  set directory^=$HOME/.vim/swap//                  " set swap file folder
  set backspace=indent,eol,start                    " fix backspace bug
  set hidden                                        " change buffers without saving
  set updatetime=100                                " run vim update more

" Tab
  set autoindent                                    " turns on auto indent
  set expandtab                                     " tabs are actually spaces
  set shiftwidth=2                                  " one tab are 2 spaces
  set smartindent                                   " does (mostly) right indenting
  set smarttab                                      " tabs fit with tabstops
  set tabstop=2                                     " tabs are at proper location

" File detection
  filetype on                                       " vim will recignize the type of file
  filetype plugin on                                " loads ftplugin.vim in runtimepath
  filetype indent on                                " loads indent.vim in runtimepath

" Search
  set hlsearch                                      " highlight all matching text
  set ignorecase                                    " /the -> the/The/THE/tHe
  set incsearch                                     " enable incremental search
  set smartcase                                     " goes together with ignorecase

" Remap mispellings of wq
  command! Wq :wq
  command! WQ :wq
  command! W :w

" Nomap arrows
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>

" Mappings for moving lines
  nnoremap <C-j> :m .+1<CR>==
  nnoremap <C-k> :m .-2<CR>==
  vnoremap <C-j> :m '>+1<CR>gv=gv
  vnoremap <C-k> :m '<-2<CR>gv=gv

" Clear search
  nmap <silent> <leader><space> :noh<CR>
" Jump to end of line while in INSERT
  inoremap <C-e> <C-o>A

" Mappings for incsearch
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)

" Git gutter settings
  let g:gitgutter_sign_added = '⏽'
  let g:gitgutter_sign_modified = '⏽'
  let g:gitgutter_sign_removed = '⏽'
  let g:gitgutter_sign_removed_first_line = '_'
  let g:gitgutter_sign_modified_removed = '_'
  let g:gitgutter_max_signs = 200
  let g:gitgutter_map_keys = 0


  if exists('&signcolumn')
    set signcolumn=yes
  else
    let g:gitgutter_sign_column_always = 1
  endif


set t_co=256
set termguicolors
colorscheme hybrid

