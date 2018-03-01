" General settings
	syntax on 
	let mapleader=","
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set number
	set ttimeoutlen=10
	set cursorline
	hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
	set mouse=a

" Remaps
	noremap <Up> <NOP>
	noremap <Down> <NOP>
	noremap <Left> <NOP>
	noremap <Right> <NOP>	

" Vundel
	set nocompatible
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim

	call vundle#begin('~/.vim/bundle')
	" ------------------------------------------------
		Plugin 'VundleVim/Vundle.vim'
		Plugin 'https://github.com/joshdick/onedark.vim'
		Plugin 'https://github.com/itchyny/lightline.vim'
		Plugin 'https://github.com/scrooloose/nerdtree'
		Plugin 'https://github.com/airblade/vim-gitgutter'
		Plugin 'https://github.com/w0rp/ale'
		Plugin 'https://github.com/JamshedVesuna/vim-markdown-preview'
	" ------------------------------------------------	
	call vundle#end()
	filetype plugin indent on

" Colors
	set laststatus=2
	let g:lightline = {
	  \ 'colorscheme': 'onedark',
	  \ }
	let g:onedark_termcolors = 256
	syntax on
	colorscheme onedark

" Vim tree
	map <C-n> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Markdown preview settings
	let vim_markdown_preview_github=1

" Ale settings
	let g:ale_javascript_prettier_use_local_config=1
	let g:ale_fixers = {
		\ 'javascript': ['prettier'],
		\ 'css': ['prettier'],
		\ 'python': ['yapf', 'isort'],
		\ 'latex': ['lacheck'],
	\}

	let g:ale_linters = {
		\ 'javascript': ['eslint', 'flow'],
		\ 'css': ['stylelint', 'prettier'],
		\ 'python': ['pycodestyle', 'flake8'],
		\ 'latex': ['lacheck'],
	\}
	let g:ale_fix_on_save = 1


