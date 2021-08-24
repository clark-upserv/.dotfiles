" Window Split
nnoremap <space>ws :sp<return>
" Window split Vertically
nnoremap <space>wv :vsp<return>
" Window Close
nnoremap <space>wc :close<return>
" Window Maximize (close all others)
nnoremap <space>wm :only<return>
" Window Terminal
nmap <space>wt :call OpenTerminalInWindow()<return>
" find if there is a terminal in a current window
function! OpenTerminalInWindow()
  let l:blist = getbufinfo({'bufloaded': 1, 'buflisted': 1})
  let l:result = []
  for l:item in l:blist
    "skip unnamed buffers; also skip hidden buffers?
    if empty(l:item.name) || l:item.hidden
        continue
    endif
    "call add(l:result, shellescape(l:item.name))
    call add(l:result, l:item.name)
  endfor
  let a = join(l:result)
  let b = substitute(a, "'", '', 'g')
  let c = split(b, '/')
  " if there is not a terminal in an active window, create new window
  echo l:result
  if index(c, 'zsh') == -1
    execute ':bo sp'
    " if terminal is present in a buffer, open that buffer (rather than 
    " openning new buffer with new terminal) 
    try
      execute ":buffer zsh"
    " else, open new buffer with new terminal
    catch    
      execute ":ter"
    endtry
  " if active, then switch to that window
  else
    let windowNr = bufwinnr('zsh')
    execute windowNr 'wincmd w'
  endif
endfunction
