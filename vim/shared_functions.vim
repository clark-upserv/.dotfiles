function! CreateBaseFile(class_or_module, include_outer_followup, include_inner_followup)
  let current_file = expand('%:r')

  if match(current_file, 'lib/') != -1
    let skip_levels = 1
  else
    let skip_levels = 2
  endif

  let splits = split(current_file, '/')
  let length = len(splits)
  let count = 1
  for split in splits
    if count > skip_levels
      execute "normal! o\<space>\<backspace>"
      " regex below will create camel case only after '_' so need to manually
      " add '_' before first word
      execute "normal! a_" . split
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

  let count = skip_levels
  while count < length
    execute "normal! oend"
    let count = count + 1
  endwhile

  execute "normal! ggi# frozen_string_literal: true\<return>\<backspace>\<backspace>"

  if a:include_outer_followup == 1
    normal! oouter_followup
  endif

  let @/ = 'class'
  execute "normal! nO# ChangeTopLevelDocumentation"

  if a:include_inner_followup == 1
    execute "normal! \<down>oinner_followup"
  elseif a:class_or_module == 1
    execute "normal! \<down>odef initialize(ChangeArgs)\<return>end"
  endif

  let @/ = 'class'
  if a:class_or_module == 0
    normal! ncgnmodule
  endif
  let @/ = 'ChangeTopLevelDocumentation\|ChangeArgs'
  normal! n
endfunction

