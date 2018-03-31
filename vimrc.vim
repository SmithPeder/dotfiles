" General settings
	syntax on 
	let mapleader=","
    set encoding=utf8
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set number
	set ttimeoutlen=10
	set cursorline
	hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold
	set mouse=a
	:set spell spelllang=en_us
    :set nospell
    :map <F8> :setlocal spell! spelllang=en_us<CR>

" Remaps to learn 'HJKL'
	noremap <Up> <NOP>
	noremap <Down> <NOP>
	noremap <Left> <NOP>
	noremap <Right> <NOP>

" Indenting
	set smartindent
	set tabstop=4
	set shiftwidth=4
	set expandtab
	set smarttab

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

        " Gutters
		Plugin 'scrooloose/nerdtree'
        Plugin 'mbbill/undotree'
		Plugin 'airblade/vim-gitgutter'
		
        " Markdown
        Plugin 'JamshedVesuna/vim-markdown-preview'

        " Python
		Plugin 'davidhalter/jedi-vim'

        " JavaScript
		Plugin 'pangloss/vim-javascript'

        " Syntax
        Plugin 'scrooloose/syntastic'
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
	colorscheme onedark

" Vim tree setting
	map <C-n> :NERDTreeToggle<CR>
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Undo tree remap
    nnoremap <F7> :UndotreeToggle<cr>

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
