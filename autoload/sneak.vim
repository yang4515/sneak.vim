function! sneak#do(n)
  let s = ''
  echo '> '
  for i in range(1, a:n)
    let pc = getchar()
    let c = type(pc) == type(0) ? nr2char(pc) : pc
    if c == "\<CR>"
      break
    else
      let s .= c
    endif
    redraw | echo '> ' . s
  endfor

  call search(s)
  let @/ = s
endfunction
