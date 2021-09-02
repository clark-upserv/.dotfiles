" File Save (all)
nnoremap <space>fs :wa<return>
" File Save (single)
nnoremap <space>fS :w<return>
" File Push (saves, adds, commits with WIP, and pushes)
nmap <silent> <space>fp :wa<return>:call OpenTerminalInWindow()<return><C-c><esc>agacp<return><esc>
" File Explore
nnoremap <silent> <space>fe :Explore<return>
" File Explore
nnoremap <silent> <space>fe :Explore<return>
