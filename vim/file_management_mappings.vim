" File Save (all)
nnoremap <space>fs :wa<return>
" File Save (single)
nnoremap <space>fS :w<return>
" File Push (saves, adds, commits with WIP, and pushes)
nmap <silent> <space>fp :wa<return>,fmotagacp<return><esc>
nmap <silent> <space>fp :wa<return>:! git add -A<return>:! git commit -m 'WIP'<return>:! git push<return>
