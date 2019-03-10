" General settings
  syntax on                                         " turn on syntax
  let mapleader = ","                               " map leader to ','
  filetype indent on                                " indent based on file type
  set encoding=utf8                                 " UTF8 encoding of filen
  set number                                        " normal line numbers
  set ttimeoutlen=10                                " used for key code delays
  set scrolloff=10                                  " always keep lines at end
  set mouse=a                                       " enable mouse movements
  set nowrap                                        " lines don't wrap
  set noswapfile                                    " no stupid .swp file
  set backspace=indent,eol,start                    " fix backspace bug
  set hidden                                        " change buffers without saving
  set nojoinspaces                                  " no spaces when joining lines
  set updatetime=100                                " run vim update more
  set noshowmode

" Tab
  set autoindent                                    " turns on auto indent
  set smartindent                                   " does (mostly) right indenting
  set tabstop=2                                     " tabs are at proper location
  set shiftwidth=2                                  " one tab are 2 spaces
  set expandtab                                     " tabs are actually spaces
  set smarttab                                      " tabs fit with tabstops

" Search
  set hlsearch                                      " highlight all matching text
  set incsearch                                     " enable incremental search
  set ignorecase                                    " /the -> the/The/THE/tHe
  set smartcase                                     " goes together with ignorecase

" General mappings

  " Jump to end of line while in INSERT
  inoremap <C-e> <C-o>A
  " Clear search
  nmap <silent> <leader><space> :noh<CR>
  " Toggle spelling
  map <leader>s :setlocal spell! spelllang=en_us<CR>
  " Toggle undotree
  nnoremap <leader>u :UndotreeToggle<cr>
  " Toggle nerdtree
  map <LEADER>, :NERDTreeTabsToggle<CR>
  " Search for the word you are located at
  nnoremap <LEADER>. :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

  nnoremap <leader>c :Consolate<cr>

  " Remove these mappings
  noremap! <C-BS> <C-w>
  noremap! <C-h> <C-w>
  noremap <Up> <NOP>
  noremap <Down> <NOP>
  noremap <Left> <NOP>
  noremap <Right> <NOP>

  " Tab movement settings
  noremap <C-l> :tabnext<CR>
  noremap <C-h> :tabprevious<CR>
  noremap <C-t> :tabnew<CR>

  " Save and quit mappings
  noremap <C-s> :w<CR>
  inoremap <C-s> <esc>:w<CR>
  noremap <C-c> :q<CR>


" Vundel plugin manager config
  set nocompatible                                  " requirment for vundle
  filetype off                                      " requirment for vundle
  set rtp+=~/.vim/bundle/Vundle.vim                 " runtime path
  call vundle#begin('~/.vim/bundle')                " START ADDING PLUGINS

  Plugin 'VundleVim/Vundle.vim'                     " main vundle plugin

  " Themes
  Plugin 'joshdick/onedark.vim'                     " onedark style
  Plugin 'dikiaap/minimalist'                       " style
  Plugin 'NLKNguyen/papercolor-theme'               " light style

  " Git stuff
  Plugin 'tpope/vim-fugitive'                       " nr1 git plugin
  
  " Syntax
  Plugin 'sheerun/vim-polyglot'                     " syntax
  Plugin 'mxw/vim-jsx'                              " allow jsx syntax

  " Statusbar
  Plugin 'itchyny/lightline.vim'                    " statusline
  Plugin 'maximbaz/lightline-ale'                   " ale errors in statusline
  Plugin 'pangloss/vim-javascript'                  " better javascript support

  " Tree plugins and addons
  Plugin 'scrooloose/nerdtree'                      " document tree
  Plugin 'jistr/vim-nerdtree-tabs'                  " document tree tabs
  Plugin 'itchyny/vim-gitbranch'                    " git for statusline
  Plugin 'Xuyuanp/nerdtree-git-plugin'              " git flags
  Plugin 'airblade/vim-gitgutter'                   " show vim diff in gutter
  Plugin 'mbbill/undotree'                          " list all undos you can do
  Plugin 'ryanoasis/vim-devicons'                   " patch-font icon support
  Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'  " enable color in nerdtree

  " Autocomplete
  Plugin 'ervandew/supertab'                        " completion
  Plugin 'Raimondi/delimitMate'                     " automatic closing

  " Others
  Plugin 'ctrlpvim/ctrlp.vim'                       " beloved fuzzyfinder
  Plugin 'airblade/vim-rooter'                      " always get root folder
  Plugin 'w0rp/ale'                                 " support linting
  Plugin 'terryma/vim-multiple-cursors'             " multiple cursors
  Plugin 'agarrharr/consolation-vim'                " console log


  call vundle#end()                                 " STOP ADDING PLUGINS
  filetype plugin indent on                         " turn back on again

" Lightline
  let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ], [ 'fugitive', 'filename' ]
      \   ],
      \   'right': [
      \     [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]
      \   ]
      \ },
      \ 'component_function': {
      \   'fugitive': 'LightlineFugitive',
      \   'readonly': 'LightlineReadonly',
      \   'modified': 'LightlineModified',
      \   'filename': 'LightlineFilename'
      \ },
      \ 'separator': {
      \   'left': ''
      \ },
      \ 'subseparator': {
      \   'left': '',
      \   'right': ''
      \ }
    \ }


  " Function used to check if something is done
  function! LightlineModified()
    if &filetype == "help"
      return ""
    elseif &modified
      return "+"
    elseif &modifiable
      return ""
    else
      return ""
    endif
  endfunction
  

  " Function to check if the file is readonly
  function! LightlineReadonly()
    if &filetype == "help"
      return ""
    elseif &readonly
      return ""
    else
      return ""
    endif
  endfunction
  

  " Function to show git branch
  function! LightlineFugitive()
    if exists("*fugitive#head")
      let branch = fugitive#head()
      return branch !=# '' ? ' '.branch : ''
    endif
    return ''
  endfunction
  

  "Function to shoe filename with icon
  function! LightlineFilename()
    return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
         \ ('' != expand('%:t') ? WebDevIconsGetFileTypeSymbol() . ' ' . expand('%:t') : '[No Name]') .
         \ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
  endfunction


  " Right side, check ale 
  let g:lightline.component_expand = {
    \  'linter_checking': 'lightline#ale#checking',
    \  'linter_warnings': 'lightline#ale#warnings',
    \  'linter_errors': 'lightline#ale#errors',
    \  'linter_ok': 'lightline#ale#ok',
    \ }


  " Right side, check ale 
  let g:lightline.component_type = {
    \  'linter_checking': 'left',
    \  'linter_warnings': 'warning',
    \  'linter_errors': 'error',
    \  'linter_ok': 'left',
    \ }


  " Right side, check ale 
  let g:lightline#ale#indicator_checking = "勒Checking"
  let g:lightline#ale#indicator_warnings = " Warnings: "
  let g:lightline#ale#indicator_errors = " Errors: "
  let g:lightline#ale#indicator_ok = " Good"


  " Remove background color in the middle
  let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
  let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let s:palette.inactive.middle = s:palette.normal.middle
  let s:palette.tabline.middle = s:palette.normal.middle


" Theme settings
  set t_Co=256
  colorscheme minimalist
  hi VertSplit ctermbg=234 ctermfg=234


" NERDTREE settings
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
  let NERDTreeMinimalUI = 1
  let NERDTreeDirArrows = 1
  let g:NERDTreeShowIgnoredStatus = 1
  let g:NERDTreeWinSize = 25
  let NERDTreeShowHidden = 1
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


  " Set spesial folder icons in NERDTREE
  let g:NERDTreeDirArrowExpandable = ''
  let g:NERDTreeDirArrowCollapsible = ''


  " Set spesial git status icons in NERDTREE
  let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "",
    \ "Staged"    : "ﴻ",
    \ "Untracked" : "",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "",
    \ "Dirty"     : " ",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '',
    \ "Unknown"   : ""
    \ }

  " Highlight full name of path (not only icons)
  let g:NERDTreeFileExtensionHighlightFullName = 1
  let g:NERDTreeExactMatchHighlightFullName = 1
  let g:NERDTreePatternMatchHighlightFullName = 1

  " Disable uncommon file extensions highlighting
  let g:NERDTreeLimitedSyntax = 1

  " Custom colors
  let s:brown = "905532"
  let s:aqua =  "3AFFDB"
  let s:blue = "689FB6"
  let s:darkBlue = "44788E"
  let s:purple = "834F79"
  let s:lightPurple = "834F79"
  let s:red = "AE403F"
  let s:beige = "F5C06F"
  let s:yellow = "F09F17"
  let s:orange = "D4843E"
  let s:darkOrange = "F16529"
  let s:pink = "CB6F6F"
  let s:salmon = "EE6E73"
  let s:green = "8FAA54"
  let s:lightGreen = "31B53E"
  let s:white = "FFFFFF"
  let s:rspec_red = 'FE405F'
  let s:git_orange = 'F54D27'

" Puts you in insertmode when file is gitcommit
  autocmd FileType gitcommit  exec 'au VimEnter * startinsert'

" Git gutter settings
  let g:gitgutter_sign_added = '⏽'
  let g:gitgutter_sign_modified = '⏽'
  let g:gitgutter_sign_removed = '⏽'
  let g:gitgutter_sign_removed_first_line = '__'
  let g:gitgutter_sign_modified_removed = '__'

  if exists('&signcolumn')  " Vim 7.4.2201
    set signcolumn=yes
  else
    let g:gitgutter_sign_column_always = 1
  endif


  " Ale settings
  let g:ale_fixers = {
  \ 'javascript': ['prettier', 'eslint']
  \}
  let g:ale_linters = {
  \    'javascript': ['eslint'],
  \    'javascript.jsx': ['eslint']
  \}

  let g:ale_fix_on_save = 1
  let g:ale_completion_enabled = 0
  let g:ale_javascript_prettier_use_local_config = 1
  let g:ale_javascript_eslint_use_local_config = 1
  let g:ale_sign_error = '●'

" CTRLP .ignore files/folders
  let g:ctrlp_max_files = 0
  set wildignore+=*/venv/*,*/target/*,*/node_modules/*,*/*.class,*/*.pyc,*/*.o
  let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" iTerm2 cursorshape settings
  if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"        " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"        " Block in normal mode
  endif

" Trim White space function
  function! TrimWhiteSpace()
    %s/\s\+$//e
  endfunction
  autocmd FileType rust,ruby,tex,c,java,javascript,python,go,elixir autocmd BufWritePre * call TrimWhiteSpace()
  nnoremap <leader>ts :call TrimWhiteSpace()<CR>

" Highlight all instances of word under cursor, when idle. (z/)
  nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
  function! AutoHighlightToggle()
    let @/ = ''
    if exists('#auto_highlight')
      au! auto_highlight
      augroup! auto_highlight
      setl updatetime=4000
      echo 'Highlight current word: OFF'
      return 0
    else
      augroup auto_highlight
        au!
        au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
      augroup end
      setl updatetime=500
      echo 'Highlight current word: NO'
      return 1
    endif
  endfunction
