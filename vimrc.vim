" General settings
    syntax on 
    let mapleader=","
    set encoding=utf8
    set number
    set ttimeoutlen=10
    set cursorline
    hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
    set mouse=a

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

" Indenting with 4 spaces per tab, and 4 spaces per indent
    set smartindent
    set tabstop=4
    set shiftwidth=4
    set expandtab
    set smarttab
    set autoindent

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

        " Syntax
        Plugin 'scrooloose/syntastic'

        " Find
        Plugin 'kien/ctrlp.vim'

        " LaTeX
        Plugin 'lervag/vimtex'
    " ------------------------------------------------  
    call vundle#end()
    filetype plugin indent on

" Style settings for onedark and lightline
    set laststatus=2
    let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ }
    let g:onedark_termcolors = 256
    syntax on
    " colorscheme onedark !NOTINUSE

" Style settings for spacegray
    colorscheme spacegray
    let g:spacegray_use_italics = 1
    let g:spacegray_low_contrast = 1

" Vim tree setting
    map <C-n> :NERDTreeToggle<CR>
    " Close if tree is the only thing left
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    
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

" Syntastic settings
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

