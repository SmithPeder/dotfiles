" General settings------------------------------------------------------------
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
  set colorcolumn=80                                " set a column at 80 chars
  set cursorline                                    " highlight the current line

" General mappings------------------------------------------------------------
  inoremap <C-e> <C-o>A|                            " jump to end of line in insert mode
  nmap <silent> <leader><space> :noh<CR>|           " clear search highlight
  map <F8> :setlocal spell! spelllang=en_us<CR>|    " turn on spelling
  noremap! <C-BS> <C-w>|                            " enable ctrl backspace
  noremap! <C-h> <C-w>|                             " enable ctrl backspace
  noremap <Up> <NOP>|                               " learn to swim without a life-jacket
  noremap <Down> <NOP>|                             " learn to swim without a life-jacket
  noremap <Left> <NOP>|                             " learn to swim without a life-jacket
  noremap <Right> <NOP>|                            " learn to swim without a life-jacket
  noremap <C-l> :tabnext<CR>|                       " next tab in normal mode
  noremap <C-h> :tabprevious<CR>|                   " prev tab in normal mode
  noremap <C-t> :tabnew<CR>|                        " new tab in normal mode
  noremap <C-s> :w<CR>|                             " ctrl s to save
  inoremap <C-s> <esc>:w<CR>a|                      " ctrl s to save in insert mode
  noremap <C-c> :q<CR>|                             " ctrl c to quit


" DIY auto closing mappings !TODO THIS SHOULD NOT BE A THING------------------
  inoremap (( ()<left>|                             " double (( gives () -> puts you in the middle
  inoremap [[ []<left>|                             " --------------------------------------------
  inoremap {{ {}<left>|                             " --------------------------------------------
  inoremap "" ""<left>|                             " --------------------------------------------
  inoremap '' ''<left>|                             " --------------------------------------------
  inoremap `` ``<left>|                             " --------------------------------------------
  inoremap << <><left>|                             " --------------------------------------------
  inoremap (<cr> (<cr>)<esc>O|                      " single ( and ENTER gives () -> with new line
  inoremap {<cr> {<cr>}<esc>O|                      " --------------------------------------------
  inoremap [<cr> [<cr>]<esc>O|                      " --------------------------------------------

" Vundel plugin manager config------------------------------------------------
  set nocompatible                                  " required for vundle
  filetype off                                      " required for vundle
  set rtp+=~/.vim/bundle/Vundle.vim                 " runtime path
  call vundle#begin('~/.vim/bundle')                " START ADDING PLUGINS
  Plugin 'VundleVim/Vundle.vim'                     " main vundle plugin

  Plugin 'joshdick/onedark.vim'                     " onedark style
  Plugin 'itchyny/lightline.vim'                    " statusline
  Plugin 'itchyny/vim-gitbranch'                    " git for statusline
  Plugin 'maximbaz/lightline-ale'                   " ale errors in statusline
  Plugin 'scrooloose/nerdtree'                      " document tree
  Plugin 'Xuyuanp/nerdtree-git-plugin'              " git flags
  Plugin 'mbbill/undotree'                          " list all undos you can do
  Plugin 'airblade/vim-gitgutter'                   " show vim diff in gutter
  Plugin 'JamshedVesuna/vim-markdown-preview'       " support markdown editing
  Plugin 'pangloss/vim-javascript'                  " better javascript support
  Plugin 'mxw/vim-jsx'                              " allow jsx syntax
  Plugin 'kien/ctrlp.vim'                           " beloved fuzzyfinder
  Plugin 'lervag/vimtex'                            " large LaTeX repo
  Plugin 'w0rp/ale'                                 " support linting
  Plugin 'valloric/youcompleteme'                   " completion

  call vundle#end()                                 " STOP ADDING PLUGINS
  filetype plugin indent on                         " turn back on again
" ----------------------------------------------------------------------------


" Style settings for syntax and lightline
  set laststatus=2
  let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ] , [ 'readonly', 'filename', 'filetype', 'gitbranch'] ],
    \   'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ] ]
    \ },
    \ 'component_function': {
    \    'gitbranch': 'gitbranch#name'
    \ },
    \ }

  let g:lightline.component_expand = {
    \  'linter_checking': 'lightline#ale#checking',
    \  'linter_warnings': 'lightline#ale#warnings',
    \  'linter_errors': 'lightline#ale#errors',
    \  'linter_ok': 'lightline#ale#ok',
    \ }

  let g:lightline.component_type = {
    \  'linter_checking': 'left',
    \  'linter_warnings': 'warning',
    \  'linter_errors': 'error',
    \  'linter_ok': 'left',
    \ }

  let g:lightline#ale#indicator_checking = "Checking..."
  let g:lightline#ale#indicator_warnings = "Warnings:"
  let g:lightline#ale#indicator_errors = "Errors:"
  let g:lightline#ale#indicator_ok = "Good"

" Theme settings
  let g:onedark_termcolors = 256
  colorscheme onedark

" Using vim tree to make vim more user friendly-------------------------------
  map <LEADER>, :NERDTreeToggle<CR>|                " toggle the tree
  autocmd vimenter * NERDTree                       " open file -> open tree
  autocmd VimEnter * wincmd p                       " go back to file
  autocmd StdinReadPre * let s:std_in=1             " open tree with no file
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  let NERDTreeMinimalUI = 1                         " cleaner tree look
  let NERDTreeDirArrows = 1                         " set direction arrows
  let g:NERDTreeShowIgnoredStatus = 1               " git for nedtree
  let g:NERDTreeWinSize=25                          " size nerdtree
  let NERDTreeShowHidden=1                          " show hidden files
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggel UNDOTree
  nnoremap <LEADER>u :UndotreeToggle<cr>

" Enable vim markdown preview 
  let vim_markdown_preview_github=1

" Puts you in insermode when file is gitcommit
  autocmd FileType gitcommit  exec 'au VimEnter * startinsert'

" Git gutter settings
  let g:gitgutter_sign_added = '|'
  let g:gitgutter_sign_modified = '|'
  let g:gitgutter_sign_removed = '|'
  let g:gitgutter_sign_removed_first_line = '__'
  let g:gitgutter_sign_modified_removed = '__'

" Ale settings---------------------------------------------------------------
  let g:ale_fixers = {
    \  'javascript': ['prettier'],
  \}
  let g:ale_fix_on_save = 1                         " prettier on save
  let g:ale_sign_column_always = 1                  " always leave room for ale
  let g:ale_lint_on_text_changed = 'never'          " dont lint on text changed

" CTRLP .ignore files/folders
  let g:ctrlp_max_files = 0
  noremap <M-p> :CtrlPBuffer<CR>
  set wildignore+=*/venv/*,*/target/*,*/node_modules/*,*/*.class,*/*.pyc,*/*.o

" Tab to complete words
  function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
      return "\<C-N>"
    else
      return "\<Tab>"
    endif
   endfunction
  inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>

" Set dict, only when spelling is on
  set dictionary="/usr/dict/words"
