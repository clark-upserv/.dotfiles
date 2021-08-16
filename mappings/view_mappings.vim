"  View Page
  " View Page BAse
  nnoremap <silent> ,vpba :read ../templates/views/page/base.html.erb<return>ggdd/DeleteThisPls\\|ChangeNavTypeOrDeleteThisLine\\|ChangePath\\|ChangeTemplate\\|ChangeLocals<return>
  " View Page STylesheets
  nnoremap <silent> ,vpst :read ../templates/views/page/stylesheets.html.erb<return>/DeleteThisNote\\|ChangePath<return>
  " View Page Javascript Packs
  nnoremap <silent> ,vpjp :read ../templates/views/page/javascript_packs.html.erb<return>/DeleteThisNote\\|ChangePath\\|Etc\.<return>
  " View Page  Non Pack javascriopts
  nnoremap <silent> ,vpnp :read ../templates/views/page/non_pack_javascripts.html.erb<return>/ChangePath<return>
  " View Page End of Body
  nnoremap <silent> ,vpeb :read ../templates/views/page/end_of_body.html.erb<return>/DeleteThisNote<return>
  " View Page End Of body - alternate mapping
  nmap <silent> ,vpeo ,vpeb
  " View Page Header Base
  nnoremap <silent> ,vphb :read ../templates/views/page/header_base.html.erb<return>/ChangeTitle\\|ChangeDisplay\\|ChangePathHelper<return>
  " View Page Tabs Base
  nnoremap <silent> ,vptb :read ../templates/views/page/tabs_base.html.erb<return>/ChangeThisPls\\|ChangeDisplay\\|ChangePathHelper<return>
  " View Page Body Base
  nnoremap <silent> ,vpbb :read ../templates/views/page/body_base.html.erb<return>/ChangePath\\|ChangeTemplate\\|DeleteThis<return>
  " View Page Body Full height columns
  nnoremap <silent> ,vpbf :read ../templates/views/page/body_full_height_columns.html.erb<return>/ChangeColumnName\\|d-xx-or-larger\\|background-color: ChangeBackgroundColor\\|ChangeWidth\\|overflow-y: scroll\\|DeleteThis\\|ChangePath\\|ChangeLocals<return>
  " View Page Body full height Columns - alternate mapping
  nmap <silent> ,vpbc ,vpbf
" View Card
  " View Card Container Element
  nnoremap <silent> ,vcce o<%# ChangeCardName card %><return><div id="ChangeCardName_card_container"><return><%= render('ChangePath/ChangeTemplate_ChangeCardName_card', ChangeLocals) %><return></div><esc>/ChangeCardName\\|ChangePath\\|ChangeTemplate\\|ChangeLocals<return>
  " View Card Contents Base
  nnoremap <silent> ,vccb :read ../templates/views/card/contents_base.html.erb<return>/DeleteThis<return>
  " View Card Contents WIde
  nnoremap <silent> ,vccw :read ../templates/views/card/contents_wide.html.erb<return>/DeleteThis<return>
  " View Card Contents Full
  nnoremap <silent> ,vccf :read ../templates/views/card/contents_full.html.erb<return>/DeleteThis<return>
  " View Card Contents Non-Card
  nnoremap <silent> ,vccn :read ../templates/views/card/contents_non_card.html.erb<return>/DeleteThis<return>
  " View Card Header Base
  nnoremap <silent> ,vchb :read ../templates/views/card/header_base.html.erb<return>/ChangeThisPls<return>
  " View Card Body Single show
  nnoremap <silent> ,vcbs :read ../templates/views/card/body_single_show.html.erb<return>/ChangeThisPls<return>
  " View Card Body Single show edit swap
  nnoremap <silent> ,vcbS :read ../templates/views/card/body_single_show_edit_swap.html.erb<return>/ChangeThisPls\\|ChangeSesId\\|ChangePath\\|ChangeLocals<return>
  " View Card Body Table
  nnoremap <silent> ,vcbt :read ../templates/views/card/body_table.html.erb<return>/ChangeObjects\\|ChangeObject\\|ChangePath\\|DeleteThis\\|ChangeFilter\\|ChangeAttributes\\|ChangeModels\\|ChangeWidth\\|ChangeColumn\\|ChangeColSpan<return>
  " View Card Body Query (ie search) for table
  nnoremap <silent> ,vcbq :read ../templates/views/card/body_search_for_table.html.erb<return>/ChangeObjects\\|ChangeObject\\|ChangePath\\|DeleteThis\\|ChangeFilter\\|ChangeAttributes\\|ChangeModels\\|ChangeWidth\\|ChangeColumn\\|ChangeColSpan<return>
  " View Card Body Filters for table
  nnoremap <silent> ,vcbf :read ../templates/views/card/body_filters_for_table.html.erb<return>/ChangeObjects\\|ChangeObject\\|ChangePath\\|DeleteThis\\|ChangeFilter\\|ChangeAttributes\\|ChangeModels\\|ChangeWidth\\|ChangeColumn\\|ChangeColSpan<return>
" Forms
" View Modals
  " View Models BAse
  nnoremap <silent> ,vmba :read ../templates/views/modals/base.html.erb<return>/DeleteThis<return>
  " View Models Contents Base
  nnoremap <silent> ,vmcb :read ../templates/views/modals/contents_base.html.erb<return>/DivOrP\\|DeleteThis\\|OK<return>
  " View Models Contents Destroy
  nnoremap <silent> ,vmcd :read ../templates/views/modals/contents_destroy.html.erb<return>/DeleteThis\\|ChangeObject\\|ChangeAttribute\\|ChangeName\\|ChangeUrl\\|SetToTrueOrRemove<return>
  " View Models Contents Image
  nnoremap <silent> ,vmci :read ../templates/views/modals/contents_image.html.erb<return>/DeleteThis\\|ChangeObject\\|ChangeProcessedAttribute\\|100%\\|auto<return>
  " View Mdoels Header Base
  nnoremap <silent> ,vmhb :read ../templates/views/modals/header_base.html.erb<return>/ChangeIconColor\\|DeleteThis\\|ChangeIconType\\|ChangeTitle<return>
  " View Mdoels Close button Group
  nmap <silent> ,vmcg :read ../templates/views/modals/close_button_base.html.erb<return>/DeleteThis<return>
  " View Mdoels Info Modal and button
  nmap <silent> ,vmim :read ../templates/views/modals/info_modal_and_button.html.erb<return>/ChangeModalId\\|ChangeTitle\\|ChangeContent<return>

