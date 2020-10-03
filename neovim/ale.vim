" ===================================================
" Ale
" ===================================================
  " Always keep sign column open
  let g:ale_sign_column_always = 1
  " Run fixers on save
  let g:ale_fix_on_save = 1
  " Use local prettier config
  let g:ale_javascript_prettier_use_local_config = 1
  " Use local eslint config
  let g:ale_javascript_eslint_use_local_config = 1
  " Autoimport TypeScript modules
  let g:ale_completion_tsserver_autoimport = 1
  " Symbols
  let g:ale_sign_error = ''
  let g:ale_sign_warning = ''
  " No background colors on error/warning
  highlight clear ALEErrorSign
  highlight clear ALEWarningSign

  autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

  let g:ale_fixers = {
        \   '*': ['remove_trailing_lines', 'trim_whitespace'],
        \   'javascript': ['prettier'],
        \   'typescript': ['prettier'],
        \   'typescriptreact': ['prettier'],
        \   'markdown': ['prettier'],
        \   'yml': ['prettier'],
        \   'css': ['prettier'],
        \   'c': ['clang-format'],
        \   'python': ['black'],
        \   'java': ['google_java_format'],
        \   'rust': ['rustfmt'],
        \   'go': ['gofmt'],
        \   'sh': ['shfmt'],
        \}
