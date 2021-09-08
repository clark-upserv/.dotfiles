nnoremap <silent> <A-right> :call GoToNextbuf(1)<return>
inoremap <silent> <A-right> <esc>:call GoToNextbuf(1)<return>
nnoremap <silent> <A-left> :call GoToNextbuf(0)<return>
inoremap <silent> <A-left> <esc>:call GoToNextbuf(0)<return>
function! GoToNextbuf(direction)
  if a:direction == 1
    let adj = 1
  else
    let adj = -1
  end
  let continue = 1
  while continue 
    let nbuf = NextBuf(adj)
    if nbuf == bufnr()
      let continue = 0
    endif
    if getbufvar(nbuf, '&buftype') == 'terminal'
      if a:direction == 1
        let adj = adj + 1
      else
        let adj = adj - 1
      endif
    else
      let continue = 0
    endif
  endwhile
  exec ':buf' nbuf 
endfunction

function! NextBuf(adj)
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1'), 'v:val.bufnr')
  let l:len = len(l:blist)
  let cbuf = bufnr()
  let cpos = index(l:blist, cbuf)
  let ncount = cpos + a:adj
  while ncount > l:len
    let ncount = ncount - l:len
  endwhile
  while ncount <= 0
    let ncount = ncount + l:len
  endwhile
  if ncount == l:len
    let nbuf = l:blist[0]
  else
    let nbuf = l:blist[ncount]
  endif
  return nbuf
endfunction

" Buffer Delete
nnoremap <space>bd :call ClearBuffer()<return>
function! ClearBuffer()
  if &buftype == 'terminal'
    " close terminal window if there are multiple windows
    if winnr() > 1
      execute ':close'
    " close terminal buffer if there are no other listed buffers and only one
    " window
    elseif len(map(filter(copy(getbufinfo()), 'v:val.listed == 1'), 'v:val.bufnr')) == 1
      execute ':bd!'
    " if go to next buffer if there are multiple buffers
    else
      let buf = bufnr()
      call GoToNextbuf(1)
      " clsoe buffer if next buffer is the same buffer (ie all buffers are
      " terminals
      if buf == bufnr()
        execute 'bd!'
      endif
    endif 
  " close buffer if not terminal
  else
    execute ':bd'
  endif
endfunction
nnoremap <space>bD :bd!<return>
" Buffer Clear
nnoremap <space>bc :call ClearBuffers()<return>
function! ClearBuffers()
  " listed is buffers in tabs; loaded is basiclly listed + any loaded files
  " that are not in the tabs - only example I have of this is nerd tree.
  " Not hidden is any loaded buffer in a window plus all other non-loaded buffers.
  " We want to clear the listed_hidden.
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 1'), 'v:val.bufnr')
  for l:item in l:blist
    if getbufvar(l:item, '&buftype') != 'terminal'
      execute ':bd' l:item
    endif
  endfor
endfunction
" searched stach overflow far and wide for these examples and don't know
" where to keep them...
" fitler for these attributes and get all info for those that pass:
"   echo getbufinfo({'bufloaded': 1, 'buflisted': 1})
" get buffer numbers only in an array
"   echo map(copy(getbufinfo()), 'v:val.bufnr')
" get filter for these attributes and buffer numbers only in an array
"   echo map(filter(copy(getbufinfo()), 'v:val.listed == 1'), 'v:val.bufnr')
"   echo map(filter(copy(getbufinfo()), 'v:val.hidden == 1 && v:val.listed == 1'), 'v:val.bufnr')
" rather than doing copy or filter / copy, you can also do:
"  let l:blist = getbufinfo()
"  let l:listed_hidden = []
"  for l:item in l:blist
"    if l:item.listed == 1 && l:item.hidden == 1
"      call add(l:listed_hidden, l:item.bufnr)
"    endif
"  endfor
"  NOTE: in vim loops, you can use 'continue' and it has the same effect as
"  ruby 'next'
nnoremap <space>bC :%bd!\|e#\|bd#<return>
" Buffer Terminal 
nnoremap <space>bt :call OpenTerminal()<return>
" need to fix this so that it opens first terminal not first zsh bucause 1)
" some people might not use zsh and 2) there could be multiple terminal and /
" or zsh buffers open
function! OpenTerminal()
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1'), 'v:val.bufnr')
  for l:item in l:blist
    if getbufvar(l:item, '&buftype') == 'terminal'
      execute ':buf' l:item
      return

    endif
  endfor
  execute ':ter'
endfunction
