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
      \   'right': [ [ 'percent' ], ['cocstatus'] ]
      \ },
      \ 'component_function': {
			\		'cocstatus': 'coc#status',
      \   'status': 'LightlineGitStatus'
      \ },
        \ 'separator': {
      \   'left': '',
      \ },
      \ 'subseparator': {
      \   'left': '',
      \ }
      \ }

  function! LightlineGitStatus() abort
    let status = get(g:, 'coc_git_status', '')
    return winwidth(0) > 50 ? status : ''
  endfunction

  autocmd User CocGitStatusChange {command}

  " No color in the middle on the statusline
  let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
  let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
  let s:palette.inactive.middle = s:palette.normal.middle
  let s:palette.tabline.middle = s:palette.normal.middle
