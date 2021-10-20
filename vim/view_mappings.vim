"  View Page
  " View Page BAse
  nnoremap <silent> ,vpba :read ../templates/views/page/base.html.erb<return>ggdd/DeleteThis\\|ChangeNavTypeOrDeleteThisLine\\|ChangeTemplate\\|ChangePath<return>
  " View Page STylesheets
  nnoremap <silent> ,vpss :read ../templates/views/page/stylesheets.html.erb<return>/DeleteThisNote\\|ChangePath<return>
  nnoremap <silent> ,vpss a<%= content_for :stylesheets do %><return><%# DeleteThis - use this for custom stylesheet for this file %><return><space><backspace><esc>:call AddCustomStyleSheetForFile()<return>a<return><%# DeleteThisNote: use this for custom stylesheet for this file %><return><%= stylesheet_link_tag('ChangePath') %><return><% end %>
  function! AddCustomStyleSheetForFile()
    let file = expand('%')
    let file = substitute(file, 'app/views/', '', '')
    let file = substitute(file, '.html.erb', '', '')
    execute "normal! a<%= stylesheet_link_tag('" . file . "') %>"
  endfunction
  " View Page Javascript Packs
  nnoremap <silent> ,vpjp :read ../templates/views/page/javascript_packs.html.erb<return>/DeleteThisNote\\|ChangePath\\|Etc\.<return>
  " View Page  Non Pack javascriopts
  nnoremap <silent> ,vpnp :read ../templates/views/page/non_pack_javascripts.html.erb<return>/ChangePath<return>
  " View Page End of Body
  nnoremap <silent> ,vpeb :read ../templates/views/page/end_of_body.html.erb<return>/DeleteThisNote<return>
  " View Page Nav type Base
  nnoremap <silent> ,vpnb a<%# DeleteThis - Delete "provide()" line below OR insert nav type. Options: 'default_logged_in', 'splash',<return>'full_height_columns', 'custom' %><return><%# DeleteThis - 'default_logged_in' or 'splash' are included automatically if user is logged in or not<return>logged in, respectively (and therefore do not need to be set manually) %><return><% provide(:nav_type, 'ChangeNavTypeOrDeleteThisLine') %><esc>/DeleteThis\\|ChangeNavTypeOrDeleteThisLine<return>
  " View Page Nav type Full height columns
  nnoremap <silent> ,vpnf a<% provide(:nav_type, 'full_height_columns') %><esc> 
  " View Page Header Base
  nnoremap <silent> ,vphb :read ../templates/views/page/header_base.html.erb<return>/ChangeTitle\\|ChangeDisplay\\|ChangePathHelper\\|DeleteThis<return>
  " View Page Body Base
  nnoremap <silent> ,vpbb :read ../templates/views/page/body_base.html.erb<return>/ChangePath\\|ChangeTemplate\\|DeleteThis<return>
  " View Page Body Stacked tabs
  nnoremap <silent> ,vpbs :read ../templates/views/page/body_stacked_tabs.html.erb<return>/ChangePath\\|ChangeTemplate\\|DeleteThis\\|ChangeObject<return>
  " View Page Body Full height columns
  nnoremap <silent> ,vpbf :read ../templates/views/page/body_full_height_columns.html.erb<return>/ChangeTemplate\\|ChangeColumnName\\|background-color: ChangeBackgroundColor\\|ChangeWidth\\|overflow-y: scroll\\|DeleteThis\\|ChangePath<return>
  " View Page Tabs Base
  nnoremap <silent> ,vptb :read ../templates/views/page/tabs_base.html.erb<return>/ChangeThisPls\\|ChangeDisplay\\|ChangePathHelper<return>
  " View Page Stacked tabs Helper
  nnoremap <silent> ,vpsh :call CreateBaseFile(0, 0, 1)<return>/ChangeTopLevelDocumentation<return><up>$viwy/ChangeTopLevelDocumentation<return>viwpbiHelper methods for <esc>A tabs<esc>:call IndentTemplate('inner_followup', 1, 0, '../templates/views/page/stacked_tabs_helper.rb')<return>/DeleteThis\\|ChangeSection\\|ChangeObject\\|ChangeUrl\\|DeleteThis\\|ChangeActiveId\\|ChangeDisplay<return>
  " View Page Stacked Tabs
  nnoremap <silent> ,vpst :read ../templates/views/page/stacked_tabs.html.erb<return>/ChangeWidth\\|ChangeObject<return>
  " View Page Stacked tabs Mobile
  nnoremap <silent> ,vpsm :read ../templates/views/page/stacked_tabs_mobile.html.erb<return>/ChangePath\\|ChangeTemplate\\|DeleteThis\\|ChangeObject<return>

" View Card
  " View Card Container Element
  nnoremap <silent> ,vcce o<%# ChangeCardName card %><return><div id="ChangeCardName_card_container"><return><%= render('ChangePath/ChangeTemplate_ChangeCardName_card') %><return></div><esc>/ChangeCardName\\|ChangePath\\|ChangeTemplate<return>
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
  nnoremap <silent> ,vcbS :read ../templates/views/card/body_single_show_edit_swap.html.erb<return>/ChangeThisPls\\|ChangeSesId\\|ChangePath<return>
  " View Card Body Table Base
  nnoremap <silent> ,vcbt :call IndentTemplate('', 0, 0, '../templates/views/card/body_table_base.html.erb')<return>/DeleteThis<return>
  " View Card Body Query (ie search) for table
  nnoremap <silent> ,vcbq :call IndentTemplate('', 0, 0, '../templates/views/card/body_search_for_table.html.erb')<return>/ChangeObjects\\|ChangeObject\\|ChangePath\\|ChangeFilter\\|ChangeAttributes\\|ChangeModels\\|ChangeWidth\\|ChangeColumn\\|ChangeColSpan<return>
  " View Card Body Filters for table
  nnoremap <silent> ,vcbf :call IndentTemplate('', 0, 0, '../templates/views/card/body_filters_for_table.html.erb')<return>/ChangeObjects\\|ChangeObject\\|ChangePath\\|DeleteThis\\|ChangeFilterButtonId\\|ChangeFilter\\|ChangeAttributes\\|ChangeModels\\|ChangeWidth\\|ChangeColumn\\|ChangeColSpan<return>
  " View Card Body Actual table
  nnoremap <silent> ,vcba :call IndentTemplate('', 0, 0, '../templates/views/card/body_actual_table.html.erb')<return>/ChangeObjects\\|ChangeObject\\|ChangePath\\|DeleteThis\\|ChangeFilter\\|ChangeAttributes\\|ChangeModels\\|ChangeWidth\\|ChangeColumn\\|ChangeColSpan\\|ChangeModalId\\|ChangeModal<return>
  " View Card Body sortable table Positions
  nmap <silent> ,vcbp ,pstv
  " View Card Body table row for no objects
  nnoremap <silent> ,vcbn :call IndentTemplate('', 0, 0, '../templates/views/card/body_no_objects.html.erb')<return>/DeleteThis\\|ChangeObjects\\|ChangeModalId\\|ChangePath\\|ChangeTemplate\\|ChangeModal\\|ChangeLinkToCreate<return>
  

" View Modals
  " View Models BAse
  nnoremap <silent> ,vmba :read ../templates/views/modals/base.html.erb<return>/DeleteThis<return>
  " View Models Contents Base
  nnoremap <silent> ,vmcb :read ../templates/views/modals/contents_base.html.erb<return>/DeleteThis\\|OK<return>
  " View Models Contents Destroy
  nnoremap <silent> ,vmcd :read ../templates/views/modals/contents_destroy.html.erb<return>/DeleteThis\\|ChangeObject\\|ChangeAttribute\\|ChangeName\\|ChangeUrl\\|SetToTrueOrRemove<return>
  " View Models Contents Image
  nnoremap <silent> ,vmci :read ../templates/views/modals/contents_image.html.erb<return>/DeleteThis\\|ChangeObject\\|ChangeProcessedAttribute\\|100%\\|auto<return>
  " View Models Contents Form
  nnoremap <silent> ,vmcf :read ../templates/views/modals/contents_form.html.erb<return>/DeleteThis<return>
  " View Mdoels Header Base
  nnoremap <silent> ,vmhb :read ../templates/views/modals/header_base.html.erb<return>/ChangeIconColor\\|DeleteThis\\|ChangeIconType\\|ChangeTitle<return>
  " View Mdoels Close button Group
  nmap <silent> ,vmcg :read ../templates/views/modals/close_button_base.html.erb<return>/DeleteThis<return>
  " View Mdoels Info Modal and button
  nmap <silent> ,vmim :read ../templates/views/modals/info_modal_and_button.html.erb<return>/ChangeModalId\\|ChangeTitle\\|ChangeContent<return>

