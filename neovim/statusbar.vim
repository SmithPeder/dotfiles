" ===================================================
" Lightline
" ===================================================
  set laststatus=2
  let g:lightline = {
      \ 'colorscheme': 'onedark',
      \ 'active': {
      \   'left': [
      \     [ 'mode', 'paste' ], [ 'status', 'filename' ]
      \   ],
      \   'right': [ [ 'cocstatus' ] ]
      \ },
      \ 'component_function': {
			\		'cocstatus': 'coc#status',
      \   'currentfunction': 'CocCurrentFunction',
      \   'status': 'LightlineGitStatus',
      \   'diagnostic': 'StatusDiagnostic'
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

  " No color in the middle on the statusline
  let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
  let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let s:palette.inactive.middle = s:palette.normal.middle
  let s:palette.tabline.middle = s:palette.normal.middle
