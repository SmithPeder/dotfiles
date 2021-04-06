" ALE CONFIG
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier'],
\   'lua': ['luafmt'],
\}

let g:ale_fix_on_save = 1
