" File Save (all)
nnoremap <space>fs :wa<return>
" File Save (single)
nnoremap <space>fS :w<return>
" File Push (adds, commits with WIP, and pushes)
nmap <silent> <space>fp :wa<return>,fmotagacp<return><esc>
