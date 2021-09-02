" File Push (saves, adds, commits with WIP, and pushes)
nnoremap <silent> <space>gp :wa<return>:call OpenTerminalInWindow()<return><C-c><esc>agacp<return><esc>
nnoremap <silent> <space>gs :wa<return>:! git status<return>
