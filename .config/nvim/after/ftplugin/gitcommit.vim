" -----------------------------------------------------------------------------
" Git commit messages
" -----------------------------------------------------------------------------
function! FiletypeGitCommit()
  setlocal spell textwidth=72

  if exists('&colorcolumn')
    set colorcolumn=51,+1
  endif
endfunction

call FiletypeGitCommit()
