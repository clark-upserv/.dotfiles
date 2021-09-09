function! CreateBaseFile(class_or_module)
  let current_file = expand('%:r')
  let splits = split(current_file, '/')
  let length = len(splits)
  let count = 1
  for split in splits
    if count != 1
      execute "normal! o\<space>\<backspace>"
      " regex below will create camel case except for first letter, so
      " manually capitalize first letter with 'bvU' below 
      execute "normal! a" . split . "\<esc>bvU"
      if count == length
        let class_or_module = 'class'
      else
        let class_or_module = 'module'
      endif
      execute 'normal! I' . class_or_module . ' '
    endif
    let count = count + 1
  endfor
  " make camel case by replacing all _x with X
  %s/_\([a-zA-Z]\)/\u\1/g
  let count = 1
  while count < length
    execute "normal! oend"
    let count = count + 1
  endwhile
  execute "normal! ggi# frozen_string_literal: true\<return>\<backspace>\<backspace>"
  let @/ = 'class'
  normal! n
  execute "normal! O# ChangeTopLevelDocumentation"
  if a:class_or_module == 0
    normal! ncgnmodule
  else
    execute "normal! \<down>odef initialize(ChangeArgs)\<return>end"
  endif
  let @/ = 'ChangeTopLevelDocumentation\|ChangeArgs'
  normal! n
endfunction

