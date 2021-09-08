function! Test()
  let current_file = expand('%')
  let new_file = input("Move \"" . current_file . "\" to: ", current_file) 
  execute "! mv " . current_file . ' ' . new_file
  execute "e " . new_file
  execute "bd " . current_file
endfunction
