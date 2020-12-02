" ===================================================
" Fuzzy Search settings
" ===================================================
" Search for files
nnoremap <LEADER>s :Clap files ++finder=rg --files --hidden -g '!{.git,node_modules}/*'<CR>
" RipGrep search inside files
nnoremap <LEADER>r :Clap grep<CR>
" RipGrep search word under cursor
nnoremap <LEADER>w :Clap grep ++query=<cword><CR>
" RipGrep search in yanks
nnoremap <LEADER>y :Clap yanks<CR>
" RipGrep search for commands
nnoremap <LEADER>c :Clap command<CR>
" RipGrep search for buffers
nnoremap <LEADER>b :Clap buffers<CR>

" Make the grep search better
let g:clap_provider_grep_opts='-H --no-heading --vimgrep --smart-case --hidden -g "!yarn.lock" -g "!.git/"'
" Set clap theme
let g:clap_theme = 'material_design_dark'
