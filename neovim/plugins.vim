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
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'

    " coc
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

    " UI
    Plug 'kristijanhusak/vim-hybrid-material'
    Plug 'itchyny/lightline.vim'
    Plug 'mengelbrecht/lightline-bufferline'
    Plug 'sheerun/vim-polyglot'
    Plug 'RRethy/vim-illuminate'
    Plug 'ryanoasis/vim-devicons'
    Plug 'mhinz/vim-startify'

    " Markdown preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

    " Parentheses
    Plug 'Raimondi/delimitMate'

    " Syntax
    Plug 'leafgarland/typescript-vim'
    Plug 'peitalin/vim-jsx-typescript'
    Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

    " Linting
    Plug 'w0rp/ale'

  call plug#end()
