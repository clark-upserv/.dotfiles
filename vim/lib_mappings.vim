" Lib Tasks
  " Lib Tasks BAse
  nmap <silent> ,ltba :read ../templates/tasks/base.rake<return>ggdd/insert first task<return>dd<up>,lttb
  " Lib Tasks Task Base
  nmap <silent> ,lttb :read ../templates/tasks/task_base.rake<return>/ChangeApp\\|ChangeTaskType\\|ChangeCategory\\|ChangeDescription\\|ChangeTaskName\\|ChangeTask1\\|ChangeTask2\\|ChangeTask3\\|DeleteThis\\|ChangeMessage<return>
  " Lib Tasks Date Helper
  nnoremap <silent> ,ltdh :read ../templates/tasks/date_helper.rake<return>/DeleteThis<return>
  " Lib Tasks Repeat  Helper
  nnoremap <silent> ,ltrb :read ../templates/tasks/repeat_block.rake<return>/DeleteThis<return>
  
" Lib Filter helper
  " Lib Filter herlper BAse
  nnoremap <silent> ,lfba :call CreateBaseFile(1, 0, 1)<return>/inner_followup<return>dd<up>:read ../templates/lib/filter_helpers/base.rb<return>
