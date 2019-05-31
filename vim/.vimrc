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
    Plug 'joshdick/onedark.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'itchyny/vim-gitbranch'
    Plug 'w0rp/ale'
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

" Mappings for moving lines up and down
  nnoremap <C-j> :m .+1<CR>==
  nnoremap <C-k> :m .-2<CR>==
  vnoremap <C-j> :m '>+1<CR>gv=gv
  vnoremap <C-k> :m '<-2<CR>gv=gv

" Clear highlight search
  nmap <silent> <leader><space> :noh<CR>

" Jump to end of line while in INSERT
  inoremap <C-e> <C-o>A

" Puts you in insertmode when file is gitcommit
  autocmd FileType gitcommit  exec 'au VimEnter * startinsert'

" Mappings for incsearch
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)

" Git gutter settings
  let g:gitgutter_sign_added = '⏽'                  " set new icon for added
  let g:gitgutter_sign_modified = '⏽'               " set new icon for modified
  let g:gitgutter_sign_removed = '⏽'                " set new icon for removed
  let g:gitgutter_sign_removed_first_line = '_'     " set new icon for inbetween
  let g:gitgutter_sign_modified_removed = '_'       " set new icon for inbetween
  let g:gitgutter_max_signs = 200                   " dont show if more then 200
  let g:gitgutter_map_keys = 0                      " unmap all gitgutter mappings

  if exists('&signcolumn')                          " always show the gitgutter
    set signcolumn=yes
  else
    let g:gitgutter_sign_column_always = 1
  endif

" Theme settings
  set t_co=256
  set term=xterm-256color
  set termguicolors
  colorscheme hybrid

" iTerm2 cursorshape settings
  if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"        " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"        " Block in normal mode
  endif

" Lightline
  source ~/dotfiles/vim/.component_functions.vim
  set laststatus=2
  let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ], [ 'gitbranch', 'filename', 'modified' ]
      \   ],
      \   'right': [ ['lineinfo'], ['percent'] ]
      \ },
      \ 'component_function': {
      \   'mode': 'WrappedMode',
      \   'paste': 'WrappedPaste',
      \   'gitbranch': 'WrappedGitBranch',
      \   'filename': 'WrappedFilename',
      \   'modified': 'WrappedModified',
      \   'lineinfo': 'WrappedLineInfo',
      \   'percent': 'WrappedPercent'
      \ },
        \ 'separator': {
      \   'left': '',
      \ },
      \ 'subseparator': {
      \   'left': '',
      \ }
      \ }
  let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
  let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let s:palette.inactive.middle = s:palette.normal.middle
  let s:palette.tabline.middle = s:palette.normal.middle

  " Ale
  let g:ale_fix_on_save = 1
  let g:ale_javascript_prettier_use_local_config=1
  let g:ale_javascript_eslint_use_local_config = 1
  let g:ale_fixers = {
        \   '*': ['remove_trailing_lines', 'trim_whitespace'],
        \   'javascript': ['prettier'],
        \   'css': ['prettier'],
        \   'c': ['clang-format'],
        \   'python': ['yapf', 'isort'],
        \   'java': ['google_java_format'],
        \   'rust': ['rustfmt'],
        \   'c++': ['clang-format'],
        \   'sh': ['shfmt']
        \}

  let g:ale_linters = {
        \ 'go': ['gometalinter', 'gofmt'],
        \ 'cpp': [ 'clang', 'clangtidy', 'cppcheck', 'cpplint', 'gcc' ],
        \ 'rust': ['cargo', 'rls', 'rustc'],
        \ 'javascript': ['eslint', 'flow','prettier'],
        \ 'css': ['stylelint', 'prettier'],
        \ 'python': ['pycodestyle', 'flake8'],
        \ 'graphql': ['prettier', 'eslint'],
        \ 'c': ['clang-format'],
        \}

" Don't show the --INSERT-- tag as it's shown by lightline
  set noshowmode
