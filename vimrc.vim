" General settings
  syntax on
  set encoding=utf8
  set number
  set ttimeoutlen=10
  set scrolloff=10
  set mouse=a
  set nowrap
  set noswapfile
  set ignorecase

" Map <Leader>
  let mapleader = ","
  let g:mapleader = ","

" Able to jump out to the end of the line with C-e in insertmode
  inoremap <C-e> <C-o>A

" Clear hlsearch
  nmap <silent> <leader>c :noh<CR>

" Toggle spelling with F8
  map <F8> :setlocal spell! spelllang=en_us<CR>

" Enable word delete with ctrl backspace
  noremap! <C-BS> <C-w>
  noremap! <C-h> <C-w>

" Don't use arrow keys
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>

" Git commit puts you in insert mode
  autocmd FileType gitcommit exec 'au VimEnter * startinsert'

" Indenting with 2 spaces per tab, and 2 spaces per indent
  filetype indent on
  set autoindent
  set smartindent
  set tabstop=2
  set shiftwidth=2
  set expandtab
  set smarttab

" Search
  set hlsearch
  set incsearch
  set ignorecase
  set smartcase

" Show where column and row
  set colorcolumn=100
  set cursorline

" Navigate tabs
  noremap <C-l> :tabnext<CR>
  noremap <C-h> :tabprevious<CR>
  noremap <C-t> :tabnew<CR>
  inoremap <C-l> <esc>:tabnext<CR>
  "inoremap <C-h> <esc>:tabprevious<CR>
  inoremap <C-t> <esc>:tabnew<CR>

" Ctrl s to save
  noremap <C-s> :w<CR>

" Save while in insert mode, and stay in insert mode
  inoremap <C-s> <esc>:w<CR>a

" Ctrl c to quit
  noremap <C-c> :q<CR>

" DIY autoclosing
  inoremap (( ()<left>
  inoremap [[ []<left>
  inoremap {{ {}<left>
  inoremap "" ""<left>
  inoremap '' ''<left>
  inoremap `` ``<left>
  inoremap << <><left>

" DIY autoclosing for paragraph
  inoremap (<cr> (<cr>)<esc>O<Tab>
  inoremap {<cr> {<cr>}<esc>O<Tab>
  inoremap [<cr> [<cr>]<esc>O<Tab>
  
" Vundel
  set nocompatible
  filetype off
  set rtp+=~/.vim/bundle/Vundle.vim

  call vundle#begin('~/.vim/bundle')
" --------------------------------------------------------------------------
" PluginManager, add new with :soruce % -> :PluginInstall
  Plugin 'VundleVim/Vundle.vim'

  Plugin 'joshdick/onedark.vim'               "onedark style
  Plugin 'itchyny/lightline.vim'              "bottom line
  Plugin 'ajh17/spacegray.vim'                "spacegray style
  Plugin 'chriskempson/base16-vim'            "base-16 style
  Plugin 'cocopon/iceberg.vim'                "iceberg style
  Plugin 'scrooloose/nerdtree'                "document tree
  Plugin 'Xuyuanp/nerdtree-git-plugin'        "git flags
  Plugin 'jistr/vim-nerdtree-tabs'            "enhance tabs for nerdtree
  Plugin 'mbbill/undotree'                    "list all undos you can do
  Plugin 'airblade/vim-gitgutter'             "show vim diff in gutter
  Plugin 'JamshedVesuna/vim-markdown-preview' "support markdown editing
  Plugin 'pangloss/vim-javascript'            "better javascript support
  Plugin 'mxw/vim-jsx'                        "allow jsx syntax
  Plugin 'kien/ctrlp.vim'                     "beloved fuzzyfinder
  Plugin 'lervag/vimtex'                      "large LaTeX repo
  Plugin 'w0rp/ale'                           "support linting
  Plugin 'valloric/youcompleteme'             "completion
" --------------------------------------------------------------------------
  call vundle#end()
  filetype plugin indent on

" Style settings for syntax and lightline
  set laststatus=2
  let g:lightline = {
    \ 'colorscheme': 'onedark',
    \ }
  let g:onedark_termcolors = 256
  colorscheme iceberg

" NERDTREE tree setting
  map <C-n> :NERDTreeToggle<CR>
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  autocmd vimenter * NERDTree
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * wincmd p
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  let g:nerdtree_tabs_open_on_console_startup=1
  let g:nerdtree_tabs_focus_on_files=1
  let g:NERDTreeWinSize=25
  let NERDTreeShowHidden=1

" Undo tree remap
  nnoremap <F7> :UndotreeToggle<cr>
  
" Git for nerdtree
  let g:NERDTreeShowIgnoredStatus = 1

" Markdown preview settings
  let vim_markdown_preview_github=1

" Ale settings
  let g:ale_fixers = {
    \  'javascript': ['prettier'],
  \}
  let g:ale_fix_on_save = 1                   "lint on save
  let g:ale_lint_on_text_changed = 'never'    "dont lint on text changed

" CTRLP .ignore files/folders
  let g:ctrlp_max_files = 0
  noremap <M-p> :CtrlPBuffer<CR>
  set wildignore+=*/venv/*,*/target/*,*/node_modules/*,*/*.class,*/*.pyc,*/*.o

" Autocomplete english
  function! Tab_Or_Complete()
    if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
      return "\<C-N>"
    else
      return "\<Tab>"
    endif
   endfunction
  inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
  set dictionary="/usr/dict/words"

" Abbreviations
  :abbr supe superuser
  :abbr autoc autocomplete
" ------------------------------------------------ 
  :abbr auth authentication
" ------------------------------------------------

