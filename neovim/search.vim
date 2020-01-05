" ===================================================
" Fuzzy Search settings
" ===================================================
  " Search for files
  nnoremap <LEADER>s :Clap files<CR>
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
