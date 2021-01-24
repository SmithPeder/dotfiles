" ===================================================
" Fuzzy Search settings
" ===================================================
" Search for files
nnoremap <LEADER>s :GFiles<CR>
" RipGrep search inside files
nnoremap <LEADER>r :Rg <CR>
" RipGrep search word under cursor
" nnoremap <LEADER>w :Rg ++query=<cword><CR>

" Enable the lsp FZF plugin, so lsp suggestions appear in the fzf popup
lua << EOF
  require('lspfuzzy').setup {}
EOF
