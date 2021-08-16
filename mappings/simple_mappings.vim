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
    inoremap <silent> <> <%  %><left><left><left>
    " erb entered
    inoremap <silent> >< <%=  %><left><left><left>
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
    " remap o and O
    nnoremap <silent> o o <backspace><esc>
    nnoremap <silent> O O <backspace><esc>
    nnoremap <silent> b o <backspace><esc>
    nnoremap <silent> B O <backspace><esc>
    " these are the same as o and O but are used in nmaps... so if these need
    " to be changed, make sure to search / reaplace all ,,o and ,,O (keeping
    " these because ,,o and ,,O is easier to search than o and O)
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
  " get back o and O since they are remapped
  nnoremap <silent> ,o o
  nnoremap <silent> ,O O
  " various comments and uncomments
  nnoremap <silent> ,# I#<esc>0
  nnoremap <silent> ,,# I<delete><esc>0
  nnoremap <silent> ,// I//<esc>0
  nnoremap <silent> ,,// I<delete><delete><esc>0
  nnoremap <silent> ,/* O/*<esc>o*/<esc>Vx0
  nnoremap <silent> ,< O<!--<esc>o--><esc>Vx0
  nnoremap <silent> ," /'<return>cgn"<esc>N.:noh<return>
  nnoremap <silent> ,' /"<return>cgn'<esc>N.:noh<return>
  "nnoremap <silent>

