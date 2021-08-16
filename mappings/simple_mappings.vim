" insert mode only mappings
  " non-leader key mappings
    " prevent return from autocomplete (very annoying because to return you have
    " to hit space then return. Now, tab does autocomplete and return does
    " return
    inoremap <silent> <return> <space><backspace><return>
    " ruby curley brace spacing
    inoremap <silent> {{ {<space><space>}<left><left>
    " bar options
    inoremap <silent> <bar><bar><bar> <bar><bar><left>
    inoremap <silent> <bar><bar><space> <bar><bar><space>
    inoremap <silent> <bar><bar>= <bar><bar>=
    " ruby interpolation
    inoremap <silent> ## #{}<left>
    " erb
    inoremap <silent> <><space> <%  %><left><left><left>
    " erb entered
    inoremap <silent> ><<space> <%=  %><left><left><left>
    " J Query Select
    inoremap <silent> $$ $()<left>

" single key non-comma
  " non leader key mappings
    " copy word
    nmap <silent> y vvy
    " copy and search
    nnoremap <silent> Y evby0/<C-R><C-R>+<return>
    vnoremap <silent> Y y0/<C-R><C-R>+<return>
    " cut word or highlighted
    nmap <silent> cx vvx<left>
    " replace word or highlighed
    nmap <silent> cc vvc
    " paste word and keep orignal 
    nmap <silent> - vvpvvy
    vmap <silent> - pvvy
    " paste word and copy word just replaced
    nmap <silent> = vvp
    vmap <silent> = p
    " redo
    nnoremap du <C-r>
    " o and O but remain in normal mode
    nnoremap <silent> b o <backspace><esc>
    nnoremap <silent> B O <backspace><esc>
    " previously o and O were re-mapped and then several recursive mappigns
    " used this new mapping. But that became almost impossible to track
    " (because /o<return> is not helpful) so ,,o and ,,O were used
    " instead because they are easier to find. They replicate 
    " the original functionaligy of the remapped o and O and are easioer to
    " search. However, each instance of ,,o and ,,O in any mapping file should probably
    " be replaced with $a<return><space><backspace><esc>
    " original remapping of o and O (jsut for reference): 
    "nnoremap <silent> o o <backspace><esc>
    "nnoremap <silent> O O <backspace><esc>
    nnoremap <silent> ,,o o <backspace><esc>
    nnoremap <silent> ,,O O <backspace><esc>
    " remap r to s (r is used by new dpad)
    nnoremap <silent> s r
    vnoremap <silent> s r
    
    " remap v-esc feature to f which is easier than v
    nnoremap <silent> f V
    vnoremap <silent> f y

    " paste line over current line
    nnoremap <silent> F VpVy

  " retrain d-pad
    " up
    nnoremap <silent> l k
    vnoremap <silent> l k
    " down
    nnoremap <silent> k j
    vnoremap <silent> k j
    " left
    nnoremap <silent> j <left>
    vnoremap <silent> j <left>
    " right
    nnoremap <silent> ; <right>
    vnoremap <silent> ; <right>
    " far left
    nnoremap <silent> q ^
    vnoremap <silent> q ^
    nnoremap <silent> Q I
    " back to beginning of word
    nnoremap <silent> w b
    vnoremap <silent> w b
    " forward to begiining of word
    nnoremap <silent> e w
    vnoremap <silent> e w
    " forward to end of word
    nnoremap <silent> r e
    vnoremap <silent> r e
    " far right (when in visual mode, use <left> to make sure to not get next line)
    nnoremap <silent> t $
    vnoremap <silent> t $<left>
    nnoremap <silent> T A
    " to top of page (keep same gg)
    "
    " to bottom of page (make hh go to bottom like G)
    nnoremap <silent> hh G
    vnoremap <silent> hh G
    " go up and down fast
    nnoremap <silent> <S-up> 4<up>
    nnoremap <silent> <S-down> 4<down>
    
" single key comma mappings
  " visual mode
  nnoremap ,v <C-v>
  " various comments and uncomments
  nnoremap <silent> ,# I#<esc>0
  nnoremap <silent> ,,# I<delete><esc>0
  nnoremap <silent> ,// I//<esc>0
  nnoremap <silent> ,,// I<delete><delete><esc>0
  nnoremap <silent> ,/* O/*<esc>o*/<esc>Vx0
  nnoremap <silent> ,< O<!--<esc>o--><esc>Vx0
  " replace single quite with double quote and vice versa
  nnoremap <silent> ,' /"<return>cgn'<esc>N.:noh<return>
  nnoremap <silent> ," /'<return>cgn"<esc>N.:noh<return>
