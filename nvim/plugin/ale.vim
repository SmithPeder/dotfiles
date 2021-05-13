" ALE CONFIG
"
" javascript  => prettier   => yarn global add prettier
" lua         => luafmt     => yarn global add lua-fmt
" python      => black      => pip3 install black
" python      => autoimport => pip3 install autoimport
" python      => isort => pip3 install autoimport

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'typescript': ['prettier'],
\   'lua': ['luafmt'],
\   'python': ['black', 'isort', 'autoimport', 'add_blank_lines_for_python_control_statements'],
\}

let g:ale_fix_on_save = 1
