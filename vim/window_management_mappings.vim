" Window Split
nnoremap <space>ws :sp<return>
" Window split Vertically
nnoremap <space>wv :vsp<return>
" Window Close
nnoremap <space>wc :close<return>
" Window Maximize (close all others)
nnoremap <space>wm :only<return>
" Window Terminal
nnoremap <space>wt :call OpenTerminalInWindow()<return>
function! OpenTerminalInWindow()
  " find buffers in open windows and if terminlal is in an open window, switch
  " to that window and skip the rest of the function
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 0'), 'v:val.bufnr')
  let termInWindow = 0
  for l:item in l:blist
    if getbufvar(l:item, '&buftype') == 'terminal' && termInWindow != 1
      let windowNr = bufwinnr(l:item)
      execute windowNr 'wincmd w'
      let termInWindow = 1
    endif
  endfor
  " if none of the open windows include a terminal, continue 
  if termInWindow == 0
    " open a new window at the bottom of the screen
    execute ':bo sp'
    " if there is a terminal in a buffer, open that buffer in widnow at bottom
    " of screen
    let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 1'), 'v:val.bufnr')
    let termInBuffer = 0
    for l:item in l:blist
      if getbufvar(l:item, '&buftype') == 'terminal' && termInBuffer != 1
        execute ':buf' l:item
        let termInBuffer = 1
      endif
    endfor
    " if no windows or buffers have terminal, open new terminal buffer in window
    " at bottom of screen
    if termInBuffer == 0
      execute ':ter'
    endif
  endif
  " would be nice to run: execute "normal! \<esc>\<C-c>\<esc>"
  " but that doesn't work from shell... so any mapping that uses this needs to
  " have that in it... sad
endfunction
