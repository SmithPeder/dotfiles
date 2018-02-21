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

" Vundel
	set nocompatible
	filetype off
	set rtp+=~/.vim/bundle/Vundle.vim

	call vundle#begin('~/.vim/bundle')
	" ------------------------------------------------
		Plugin 'VundleVim/Vundle.vim'
		Plugin 'https://github.com/joshdick/onedark.vim'
		Plugin 'https://github.com/itchyny/lightline.vim'
		Plugin 'https://github.com/airblade/vim-gitgutter'
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
