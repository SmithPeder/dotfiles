" ===================================================
" Install Plug if it's not installed
" ===================================================
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

" ===================================================
" Plug install list
" ===================================================
  call plug#begin('~/.vim/plugged')

    " Git
    Plug 'airblade/vim-rooter'
    Plug 'airblade/vim-gitgutter'

    " Search
    Plug 'haya14busa/incsearch.vim'
    Plug 'google/vim-searchindex'
    Plug 'liuchengxu/vim-clap'
    
    " coc
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

    " Visual
    Plug 'smithpeder/vim-hybrid'
    Plug 'joshdick/onedark.vim'
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'itchyny/lightline.vim'
    Plug 'sheerun/vim-polyglot'
    Plug 'RRethy/vim-illuminate'
    Plug 'chrisbra/Colorizer'

    " Parentheses
    Plug 'Raimondi/delimitMate'

    " Linting
    Plug 'w0rp/ale'

  call plug#end()
