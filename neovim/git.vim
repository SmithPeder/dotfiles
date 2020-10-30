" ===================================================
" Git gutter settings
" ===================================================
let g:gitgutter_sign_added = '⏽'                  " set new icon for added
let g:gitgutter_sign_modified = '⏽'               " set new icon for modified
let g:gitgutter_sign_removed = '⏽'                " set new icon for removed
let g:gitgutter_sign_removed_first_line = '▔'     " set new icon for inbetween
let g:gitgutter_sign_modified_removed = '⏽'       " set new icon for inbetween
let g:gitgutter_max_signs = 300                   " don't show if more then 300
let g:gitgutter_map_keys = 0                      " unmap all gitgutter mappings
if exists('&signcolumn')                          " always show the gitgutter
  set signcolumn=yes
else
  let g:gitgutter_sign_column_always = 1
endif
