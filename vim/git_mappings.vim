" Git Push (saves, adds, commits with WIP, and pushes)
nnoremap <silent> <space>gp :wa<return>:! git add -A; git commit -am "wip"; git push; git status<return>
nnoremap <silent> <space>gp :call GitPush()<return>
function! GitPush()
  let commitMessage = input("Please give a commit messate (leave blank for \"WIP\"): ", "WIPssss")
  execute "normal! :wa\<return>:! git add -A; git commit -am \"" . commitMessage . "\"; git push; git status\<return>"
endfunction
nnoremap <silent> <space>gP :wa<return>:call OpenTerminalInWindow()<return><C-c><esc>agacp<return>
" Git Status
nnoremap <silent> <space>gs :wa<return>:! git status<return>
