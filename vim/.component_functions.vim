" Written by JONAS BAKKEN https://github.com/jonasbak

function! WrappedPercent()
  if &ft !=? 'nerdtree'
    return line('.') * 100 / line('$') . '%'
  else
    return ''
  endif
endfunction
function! WrappedLineInfo()
  if &ft !=? 'nerdtree'
    return line('.').':'. col('.')
  else
    return ''
  endif
endfunction
function! WrappedGitBranch()
  if &ft !=? 'nerdtree'
    return gitbranch#name()
  else
    return ''
  endif
endfunction
function! WrappedModified()
  if &mod
    return '+'
  else
    return ''
  endif
endfunction
function! WrappedFilename()
  if &ft !=? 'nerdtree'
    return @%
  else
    return ''
  endif
endfunction
function! WrappedMode()
  if &ft !=? 'nerdtree'
    return lightline#mode()
  else
    return ''
  endif
endfunction
function! WrappedPaste()
  if &ft !=? 'nerdtree'
    return &paste?"PASTE":""
  else
    return ''
  endif
endfunction
