" Buffer Delete
nnoremap <space>bd :call ClearBuffer()<return>
function! ClearBuffer()
  if &buftype == 'terminal'
    execute ':bd!'
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
  " Not hidden is any loaded buffer in a window plus all non-loaded buffers.
  " We want to clear the listed_hidden.
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 1'), 'v:val.bufnr')
  for l:item in l:blist
    if getbufvar(l:item, '&buftype') == 'terminal'
      execute ':bd!' l:item
    else
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
function! OpenTerminal()
  try
    execute ":buffer zsh"
  catch    
    execute ":ter"
  endtry
endfunction
