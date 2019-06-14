" Install Plug if it's not installed
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif

" Plugins
  call plug#begin('~/.vim/plugged')

    " Git
    Plug 'airblade/vim-rooter'
    Plug 'airblade/vim-gitgutter'
    Plug 'itchyny/vim-gitbranch'

    " Fuzzy search
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'haya14busa/incsearch.vim'
    Plug 'jremmen/vim-ripgrep'

    " Completion
    Plug 'Raimondi/delimitMate'
    Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

    " Visual
    Plug 'smithpeder/vim-hybrid'
    Plug 'joshdick/onedark.vim'
    Plug 'itchyny/lightline.vim'
    Plug 'sheerun/vim-polyglot'

    " Linting
    Plug 'w0rp/ale'
  call plug#end()

" General settings
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

" Tab
  set autoindent                                    " turns on auto indent
  set expandtab                                     " tabs are actually spaces
  set shiftwidth=2                                  " one tab are 2 spaces
  set smartindent                                   " does (mostly) right indenting
  set smarttab                                      " tabs fit with tabstops
  set tabstop=2                                     " tabs are at proper location

" Tab navigation
  nnoremap <C-l> :tabnext<CR>
  nnoremap <C-h> :tabprevious<CR>
  nnoremap <C-t> :tabnew<CR>

" Move cursor in Insert Mode
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

" Mappings for moving lines up and down
  nnoremap <C-j> :m .+1<CR>==
  nnoremap <C-k> :m .-2<CR>==
  vnoremap <C-j> :m '>+1<CR>gv=gv
  vnoremap <C-k> :m '<-2<CR>gv=gv

" Clear highlight search
  nmap <silent> <leader><space> :noh<CR>

" Jump to end of line while in INSERT
  inoremap <C-e> <C-o>A

" Puts you in insertmode when file is gitcommit
  autocmd FileType gitcommit  exec 'au VimEnter * startinsert'

" Mappings for incsearch
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map g/ <Plug>(incsearch-stay)

" With smart case turned on, if you do a search using all lowercase letters,
" ripgrep will do a case insensitive search. If you use any capital letters,
" it assumes that you want that specific query and will keep it case sensitive.
  let g:rg_command = 'rg --vimgrep'
  nnoremap <LEADER>s :GFiles<CR>
  nnoremap <LEADER>r :Rg<SPACE>

" Git gutter settings
  let g:gitgutter_sign_added = '⏽'                  " set new icon for added
  let g:gitgutter_sign_modified = '⏽'               " set new icon for modified
  let g:gitgutter_sign_removed = '⏽'                " set new icon for removed
  let g:gitgutter_sign_removed_first_line = '_'     " set new icon for inbetween
  let g:gitgutter_sign_modified_removed = '_'       " set new icon for inbetween
  let g:gitgutter_max_signs = 200                   " dont show if more then 200
  let g:gitgutter_map_keys = 0                      " unmap all gitgutter mappings

  if exists('&signcolumn')                          " always show the gitgutter
    set signcolumn=yes
  else
    let g:gitgutter_sign_column_always = 1
  endif

" Theme settings
  set t_co=256
  set termguicolors
  colorscheme hybrid

" ===================================================
" COC
" ===================================================
  set cmdheight=2                                   " Better display for messages
  set nobackup                                      " some servers have issues with backup
  set nowritebackup                                 " some servers have issues with backup
  set shortmess+=c                                  " dont give ins-completion-menu messages.

  " Use tab for trigger completion with characters ahead and navigate.
  " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  " Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
  " Coc only does snippet and additional edit on confirm.
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

  " Use `[c` and `]c` to navigate diagnostics
  nmap <silent> [c <Plug>(coc-diagnostic-prev)
  nmap <silent> ]c <Plug>(coc-diagnostic-next)

  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

  " Use K to show documentation in preview window
  nnoremap <silent> K :call <SID>show_documentation()<CR>
  function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
	endfunction<Paste>

	" Highlight symbol under cursor on CursorHold
	autocmd CursorHold * silent call CocActionAsync('highlight')

	" Remap for rename current word
 	nmap <leader>rn <Plug>(coc-rename)

	" Remap for format selected region
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	augroup mygroup
    autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      " Update signature help on jump placeholder
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

	" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap for do codeAction of current line
	nmap <leader>ac  <Plug>(coc-codeaction)
	" Fix autofix problem of current line
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Use `:Format` to format current buffer
	command! -nargs=0 Format :call CocAction('format')

	" Use `:Fold` to fold current buffer
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" ===================================================
" iTerm2
" ===================================================
  if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"        " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"        " Block in normal mode
  endif

" ===================================================
" Lightline
" ===================================================
  source ~/dotfiles/vim/.component_functions.vim
  set laststatus=2
  let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ], [ 'gitbranch', 'filename', 'modified' ]
      \   ],
      \   'right': [ [ 'percent' ], [ 'lineinfo' ], ['cocstatus'] ]
      \ },
      \ 'component_function': {
      \   'mode': 'WrappedMode',
      \   'paste': 'WrappedPaste',
      \   'gitbranch': 'WrappedGitBranch',
      \   'filename': 'WrappedFilename',
      \   'modified': 'WrappedModified',
      \   'lineinfo': 'WrappedLineInfo',
      \   'percent': 'WrappedPercent',
			\		'cocstatus': 'coc#status'
      \ },
        \ 'separator': {
      \   'left': '',
      \ },
      \ 'subseparator': {
      \   'left': '',
      \ }
      \ }
  let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
  let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let s:palette.inactive.middle = s:palette.normal.middle
  let s:palette.tabline.middle = s:palette.normal.middle

" ===================================================
" Ale
" ===================================================
  let g:ale_fix_on_save = 1
  let g:ale_javascript_prettier_use_local_config = 1
  let g:ale_javascript_eslint_use_local_config = 1
  let g:ale_fixers = {
        \   '*': ['remove_trailing_lines', 'trim_whitespace'],
        \   'javascript': ['prettier'],
        \   'typescript': ['prettier'],
        \   'css': ['prettier'],
        \   'c': ['clang-format'],
        \   'python': ['yapf', 'isort'],
        \   'java': ['google_java_format'],
        \   'rust': ['rustfmt'],
        \   'c++': ['clang-format'],
        \   'sh': ['shfmt']
        \}

  let g:ale_linters = {
        \ 'go': ['gometalinter', 'gofmt'],
        \ 'cpp': [ 'clang', 'clangtidy', 'cppcheck', 'cpplint', 'gcc' ],
        \ 'rust': ['cargo', 'rls', 'rustc'],
        \ 'javascript': ['eslint', 'flow', 'prettier'],
        \ 'typescript': ['eslint'],
        \ 'css': ['stylelint', 'prettier'],
        \ 'python': ['pycodestyle', 'flake8'],
        \ 'graphql': ['prettier', 'eslint'],
        \ 'c': ['clang-format'],
        \}

" Don't show the --INSERT-- tag as it's shown by lightline
" Has to be on the bottom for some dumb reason
  set noshowmode
