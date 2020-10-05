" ===================================================
" Ale
" ===================================================
  " Always keep sign column open
  let g:ale_sign_column_always = 1
  " Run fixers on save
  let g:ale_fix_on_save = 1
  " Symbols
  let g:ale_sign_error = ''
  let g:ale_sign_warning = ''
  " No background colors on error/warning
  highlight clear ALEErrorSign
  highlight clear ALEWarningSign

  autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

  " Only use ALE for fixers
  let g:ale_disable_lsp = 1

  let g:ale_fixers = {
  \   '*': ['remove_trailing_lines', 'trim_whitespace'],
  \   'javascript': ['prettier'],
  \   'typescript': ['prettier'],
  \   'typescriptreact': ['prettier'],
  \   'css': ['prettier'],
  \   'markdown': ['prettier'],
  \   'python': ['black'],
  \   'rust': ['rustfmt'],
  \   'go': ['gofmt']
  \ }
  let g:ale_fix_on_save = 1
