" General settings
    syntax on
    let mapleader=","
    set encoding=utf8
    set number
    set ttimeoutlen=10
    set scrolloff=10
    set cursorline
    hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
    set mouse=a
    set nowrap

" Toggle spelling with F8
    map <F8> :setlocal spell! spelllang=en_us<CR>

" Use Ctrl Backspace for remove last word effect
    noremap! <C-BS> <C-w>
    noremap! <C-h> <C-w>

" Don't use arrow keys
    noremap <Up> <NOP>
    noremap <Down> <NOP>
    noremap <Left> <NOP>
    noremap <Right> <NOP>

" Indenting with 2 spaces per tab, and 2 spaces per indent
    set smartindent
    set tabstop=2
    set shiftwidth=2
    set expandtab
    set smarttab
    set autoindent
    set colorcolumn=100

" Vundel
    set nocompatible
    filetype off
    set rtp+=~/.vim/bundle/Vundle.vim

    call vundle#begin('~/.vim/bundle')
    " ------------------------------------------------
        " PluginManager, add new with :PluginInstall
        Plugin 'VundleVim/Vundle.vim'

        " Style
        Plugin 'joshdick/onedark.vim'
        Plugin 'itchyny/lightline.vim'
        Plugin 'ajh17/spacegray.vim'
        Plugin 'chriskempson/base16-vim'

        " Gutters
        Plugin 'scrooloose/nerdtree'
        Plugin 'Xuyuanp/nerdtree-git-plugin'
        Plugin 'mbbill/undotree'
        Plugin 'airblade/vim-gitgutter'

        " Markdown
        Plugin 'JamshedVesuna/vim-markdown-preview'

        " Python
        Plugin 'davidhalter/jedi-vim'

        " JavaScript
        Plugin 'pangloss/vim-javascript'
        Plugin 'mxw/vim-jsx'

        " Find
        Plugin 'kien/ctrlp.vim'

        " LaTeX
        Plugin 'lervag/vimtex'

        " Lint
        Plugin 'w0rp/ale'
    " ------------------------------------------------
    call vundle#end()
    filetype plugin indent on

" Style settings for onedark and lightline
    set laststatus=2
    let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
    let g:onedark_termcolors = 256
    colorscheme onedark

" Vim tree setting
    map <C-n> :NERDTreeToggle<CR>
    let NERDTreeMinimalUI = 1
    let NERDTreeDirArrows = 1

" Undo tree remap
    nnoremap <F7> :UndotreeToggle<cr>

" Git for nerdtree
    let g:NERDTreeIndicatorMapCustom = {
         \ "Modified"  : "✹",
         \ "Staged"    : "✚",
         \ "Untracked" : "✭",
         \ "Renamed"   : "➜",
         \ "Unmerged"  : "═",
         \ "Deleted"   : "✖",
         \ "Dirty"     : "✗",
         \ "Clean"     : "✔︎",
         \ 'Ignored'   : '☒',
         \ "Unknown"   : "?"
         \ }
    let g:NERDTreeShowIgnoredStatus = 1

" Markdown preview settings
    let vim_markdown_preview_github=1

" Jedi vim settings
    autocmd FileType python setlocal completeopt-=preview

" Ale settings
  let g:ale_fixers = {
  \   'javascript': ['eslint'],
  \}
  let g:ale_fix_on_save = 1
