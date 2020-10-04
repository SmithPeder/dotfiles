" ===================================================
" Theme settings
" ===================================================
  set t_co=256                                      " enable 256 colors in vim
  set termguicolors                                 " use full 24-bit colors as defined

  let g:sonokai_style = 'default' 		              " set sonokai to default version
  let g:sonokai_enable_italic = 1		                " enable italic in this color scheme
  let g:sonokai_disable_italic_comment = 1 	        " by default italic is enabled in Comment
  let g:sonokai_sign_column_background = 'none'     " make sign column the same color as the background

   let g:sonokai_diagnostic_line_highlight = 1      " plugins that support highlighting error/warning/info/hint
   let g:sonokai_current_word = 'bold'              " plugins can highlight the word under current cursor
   let g:sonokai_better_performance = 1             " allows you to load part of the code on demand

   colorscheme sonokai
