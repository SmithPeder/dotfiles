" ===================================================
" General settings
" ===================================================
set backspace=indent,eol,start                    " MUST HAVE OSX DON'T REMOVE
syntax on                                         " turn on syntax
let mapleader = ","                               " map leader to ','
set encoding=utf8                                 " UTF8 encoding of filen
set number                                        " normal line numbers
set ttimeoutlen=10                                " used for key code delays
set scrolloff=10                                  " always keep lines at end
set mouse=a                                       " enable mouse movements
set backspace=indent,eol,start                    " fix backspace bug
set hidden                                        " change buffers without saving
set updatetime=100                                " run vim update more
set noswapfile                                    " no swp files
set wrap                                          " wrap
set wrapmargin=8                                  " wrap when 8 chars left
set linebreak                                     " set soft wrapping
set ttyfast                                       " faster redrawing

" Tab
set autoindent                                    " turns on auto indent
set expandtab                                     " tabs are actually spaces
set shiftwidth=2                                  " one tab are 2 spaces
set smartindent                                   " does (mostly) right indenting
set smarttab                                      " tabs fit with tabstops
set tabstop=2                                     " tabs are at proper location
set shiftwidth=2                                  " edit as if the tabs are 2 spaces
set shiftround                                    " round to a multiple of shiftwidth

" Move cursor in insert Mode
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

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

" Clear highlight search
nmap <silent> <leader><space> :noh<CR>

" Jump to end of line while in INSERT
inoremap <C-e> <C-o>A

" Puts you in insertmode when file is gitcommit
autocmd FileType gitcommit  exec 'au VimEnter * startinsert'

" Correct comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+

"auto close {
function! s:CloseBracket()
    let line = getline('.')
    if line =~# '^\s*\(struct\|class\|enum\) '
        return "{\<Enter>};\<Esc>O"
    elseif searchpair('(', '', ')', 'bmn', '', line('.'))
        " Probably inside a function call. Close it off.
        return "{\<Enter>});\<Esc>O"
    else
        return "{\<Enter>}\<Esc>O"
    endif
endfunction
inoremap <expr> {<Enter> <SID>CloseBracket()
