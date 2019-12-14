" ===================================================
" Lightline
" ===================================================
  set laststatus=2
  let g:lightline = {}
  let g:lightline = {
      \ 'colorscheme': 'one',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ], [ 'status', 'filename' ]
      \   ],
      \   'right': [ [ 'percent' ], [ 'cocstatus' ] ]
      \ },
      \ 'component_function': {
			\		'cocstatus': 'coc#status',
      \   'status': 'LightlineGitStatus',
      \ },
      \ 'separator': {
      \   'left': '',
      \ },
      \ 'subseparator': {
      \   'left': '',
      \ }
      \ }

  " Git status
  function! LightlineGitStatus() abort
    return get(g:, 'coc_git_status', '')
  endfunction

  autocmd User CocGitStatusChange {command}

  " Don't show the --INSERT-- tag as it's shown by lightline
  set noshowmode

  " No color in the middle on the statusline
  let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
  let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let s:palette.inactive.middle = s:palette.normal.middle
  let s:palette.tabline.middle = s:palette.normal.middle

" ===================================================
" Tabline
" ===================================================
  set laststatus=2
  set guioptions-=e
  let g:lightline#bufferline#show_number = 1
  let g:lightline#bufferline#shorten_path = 0
  let g:lightline#bufferline#unnamed = '[No Name]'
  let g:lightline.tabline = {'left': [['buffers']], 'right': [['close']]}
  let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
  let g:lightline.component_type = {'buffers': 'tabsel'}
  let g:lightline#bufferline#enable_devicons = 1

  nmap <Leader>1 <Plug>lightline#bufferline#go(1)
  nmap <Leader>2 <Plug>lightline#bufferline#go(2)
  nmap <Leader>3 <Plug>lightline#bufferline#go(3)
  nmap <Leader>4 <Plug>lightline#bufferline#go(4)
  nmap <Leader>5 <Plug>lightline#bufferline#go(5)
  nmap <Leader>6 <Plug>lightline#bufferline#go(6)
  nmap <Leader>7 <Plug>lightline#bufferline#go(7)
  nmap <Leader>8 <Plug>lightline#bufferline#go(8)
  nmap <Leader>9 <Plug>lightline#bufferline#go(9)
  nmap <Leader>0 <Plug>lightline#bufferline#go(10)
