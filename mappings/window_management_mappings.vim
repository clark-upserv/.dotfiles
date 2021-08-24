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
" need to fix this so that it opens first terminal not first zsh bucause 1)
" some people might not use zsh and 2) there could be multiple terminal and /
" or zsh buffers open
function! OpenTerminalInWindow()
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 0'), 'v:val.bufnr')
  for l:item in l:blist
    if getbufvar(l:item, '&buftype') == 'terminal'
      let windowNr = bufwinnr(l:item)
      execute windowNr 'wincmd w'
      return

    endif
  endfor
  execute ':bo sp'
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 1'), 'v:val.bufnr')
  for l:item in l:blist
    if getbufvar(l:item, '&buftype') == 'terminal'
      execute ':buf' l:item
      return

    endif
  endfor
  execute ':ter'
endfunction
