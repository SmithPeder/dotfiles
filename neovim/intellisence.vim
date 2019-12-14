" ===================================================
" COC
" ===================================================
  set cmdheight=2                                   " Better display for messages
  set nobackup                                      " some servers have issues with backup
  set nowritebackup                                 " some servers have issues with backup
  set shortmess+=c                                  " dont give ins-completion-menu messages.

" ===================================================
" COC Plugins
" ===================================================
  :nmap ge :CocCommand explorer<CR>


  " Use tab for trigger completion with characters ahead and navigate.
  " Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
  inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? "\<TAB>" :
        \ coc#refresh()
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction

  " Use <c-space> to trigger completion.
  inoremap <silent><expr> <c-space> coc#refresh()

  " Use <cr> to confirm completion
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

  " Use `[c` and `]c` to navigate diagnostics
  nmap <silent> [c <Plug>(coc-diagnostic-prev)
  nmap <silent> ]c <Plug>(coc-diagnostic-next)

  " Remap keys for gotos
  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gy <Plug>(coc-type-definition)
  nmap <silent> gi <Plug>(coc-implementation)
  nmap <silent> gr <Plug>(coc-references)

	" Remap for format selected region
	xmap <leader>f  <Plug>(coc-format-selected)
	nmap <leader>f  <Plug>(coc-format-selected)

	augroup mygroup
    autocmd!
      " Setup formatexpr specified filetype(s).
      autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
      " Update signature help on jump placeholder
      autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
  augroup end

	" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
	xmap <leader>a  <Plug>(coc-codeaction-selected)
	nmap <leader>a  <Plug>(coc-codeaction-selected)

	" Remap for do codeAction of current line
	nmap <leader>ac  <Plug>(coc-codeaction)
	" Fix autofix problem of current line
	nmap <leader>qf  <Plug>(coc-fix-current)

	" Use `:Format` to format current buffer
	command! -nargs=0 Format :call CocAction('format')

	" Use `:Fold` to fold current buffer
	command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" ===================================================
" Ale
" ===================================================
  let g:ale_fix_on_save = 1
  let g:ale_javascript_prettier_use_local_config = 1
  let g:ale_javascript_eslint_use_local_config = 1
  let g:ale_fixers = {
        \   '*': ['remove_trailing_lines', 'trim_whitespace'],
        \   'javascript': ['prettier'],
        \   'typescript': ['prettier'],
        \   'css': ['prettier'],
        \   'c': ['clang-format'],
        \   'python': ['yapf', 'isort', 'black'],
        \   'java': ['google_java_format'],
        \   'rust': ['rustfmt'],
        \   'c++': ['clang-format'],
        \   'sh': ['shfmt']
        \}

  let g:ale_linters = {
        \ 'go': ['gometalinter', 'gofmt'],
        \ 'cpp': [ 'clang', 'clangtidy', 'cppcheck', 'cpplint', 'gcc' ],
        \ 'rust': ['cargo', 'rls', 'rustc'],
        \ 'javascript': ['eslint', 'flow', 'prettier'],
        \ 'typescript': ['eslint'],
        \ 'css': ['stylelint', 'prettier'],
        \ 'python': ['pycodestyle', 'flake8'],
        \ 'graphql': ['prettier', 'eslint'],
        \ 'c': ['clang-format'],
        \}
