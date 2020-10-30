" ===================================================
" Lightline
" ===================================================
set laststatus=2
let g:lightline = {}
let g:lightline = {
    \ 'colorscheme': 'sonokai',
    \ 'active': {
    \   'left': [
    \     [ 'mode', 'paste' ], [ 'readonly', 'status', 'filename' ]
    \   ],
    \   'right': [ [ 'percent' ] ]
    \ },
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" }
    \ }

" Don't show the --INSERT-- tag as it's shown by lightline
set noshowmode

" No color in the middle on the statusline
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
