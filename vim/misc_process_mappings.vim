" Sortable Table positions
  " Controller
  nnoremap <silent> ,pstc :call IndentTemplate('', 0, 0, '../templates/misc_processes/sortable_table_positions/controller.rb')<return>/ChangeParentModel\\|ChangeParent\\|ChangeAuth\\|DeleteThis\\|ChangeChildren\\|ChangeItems\\|ChangeItem\\|ChangeAbility\\|ChangeStpId<return>
  

  " View
  nnoremap <silent> ,pstv :call IndentTemplate('', 0, 0, '../templates/misc_processes/sortable_table_positions/view.html.erb')<return>/ChangeStpId\\|ChangePath\\|ChangeStpIdForm\\|ChangeParent\\|ChangeChildren\\|ChangeChild\\|DeleteThis\\|ChangeFinalHiddenRowHeight<return>

