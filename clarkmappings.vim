" Summary
"   [some random one off stuff]
"   single key comma (o, comments)
"   Misc
"   Files / Create
"   View templates
"   Erb
"   Html
"     Html Elements
"     Html Forms
"     Html form Inputs
"     Html form Show elements
"     Html View templates
"   Ruby
"     Ruby Basic
"     Ruby Models
"     Ruby Routes
"     Ruby Controllers
"     Ruby Helpers
"   Javascript
"     Javascript Vanillia
"     Javascript jQuery
"   Stylesheets
"     Stylesheets Base
"   Tests
"   Packages
"
"
" random one off stuff
  " Caps lock in insert mode (press ctrl - ^ to toggle)
    " Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
    for c in range(char2nr('A'), char2nr('Z'))
      execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
      execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
    endfor
    " Kill the capslock when leaving insert mode.
    autocmd InsertLeave * set iminsert=0

  " insert mode only mappings
    " single key mappings
      " prevent return from autocomplete (very annoying because to return you have
      " to hit space then return. Now, tab does autocomplete and return does
      " return
        inoremap <silent> <return> <space><backspace><return>
        inoremap <silent> {{ {<space><space>}<left><left>
        inoremap <silent> <bar><bar><bar> <bar><bar><left>
        inoremap <silent> <bar><bar><space> <bar><bar><space>
        inoremap <silent> <bar><bar>= <bar><bar>=

  " retrain d-pad
    " down several
    nnoremap <silent> e 4k
    vnoremap <silent> e 4k
    " up several
    nnoremap <nowait> w 4j
    vnoremap <silent> w 4j
    " back
    nnoremap <silent> q b
    vnoremap <silent> q b
    " forward to end
    nnoremap <silent> r e
    vnoremap <silent> r e
    " up
    nnoremap <silent> l k
    vnoremap <silent> l k
    " down
    nnoremap <silent> k j
    vnoremap <silent> k j
    " left
    nnoremap <silent> j <left>
    vnoremap <silent> j <left>
    " right
    nnoremap <silent> ; <right>
    vnoremap <silent> ; <right>
    " remap r
    nnoremap <silent> s r
    vnoremap <silent> s r
    " remap w
    nnoremap <silent> f w
    vnoremap <silent> f w

" single key comma mappings
  nnoremap <silent> ,o o <backspace><esc>
  nnoremap <silent> ,O O <backspace><esc>comments)
  nnoremap <silent> ,# I#<esc>0
  nnoremap <silent> ,,# I<delete><esc>0
  nnoremap <silent> ,// I//<esc>0
  nnoremap <silent> ,,// I<delete><delete><esc>0
  nnoremap <silent> ,/* O/*<esc>o*/<esc>Vx0
  nnoremap <silent> ,< O<!--<esc>o--><esc>Vx0
  "nnoremap <silent>

" Misc. mapping / messages
  " Misc. Reload Source
  nnoremap <silent> ,mrs :so ~/.dotfiles/clarkmappings.vim<return>
  " Misc. DD but combine to previous line instead of delete line
  " NOTE: this will delete first word if line has no indentation...
  nmap <silent> ,mdd I<esc>vvxi<backspace><esc>
  " Misc. Dd but combine to Forward line instead of delete line
  " NOTE: this will delete first word if line has no indentation...
  nmap <silent> ,mdf A<esc>wsvvxi<backspace><esc>

  " Misc. Messages
  nnoremap <silent> ,mminsert_input a<%# DeleteThis - insert HTML Form input %><esc>/DeleteThis<return>
  nnoremap <silent> ,mmno_href_comment a<%# DeleteThis: if styling like link, keep "no-href-link" class; if styling like icon, keep "no-href-icon" and add standard icon classes; if styling like button, remove both classes above and add standard button classes %>
  nnoremap <silent> ,mmdir_notes a# DeleteThisNote: ** searches all subfolders; *.ChangeExtension searches all file names wit that extension; the final * makes sure to include erb files<return><backspace><backspace><esc>

" File mappings
  " File SEArch
  nnoremap ,fsea :e **/*
  " File Path
    " File PAth COpy
    nnoremap ,fpco :let @+ = expand('%:h') . '/'<return>
  " File Edit
    " File Edit PAth
    nnoremap ,fepa :let @+ = expand('%:h') . '/'<return>:e <C-R><C-R>+<space><backspace>
    " File Edit PAth and return
    nnoremap ,fepA :let @+ = expand('%:h')<return>:e <C-R><C-R>+<return>
    " File Edit CLipboard
    nnoremap ,fecl :e <C-R><C-R>+<space><backspace>
    " File Edit Clipboard and return
    nnoremap ,fecL :e <C-R><C-R>+<return>
    " File Edit Controller to View 
    nnoremap ,fecv :let @+ = expand("%")<return>o<esc>pO<esc>/controllers<return>cgnviews<esc>/_controller\.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
    " File Edit Controller to Helper 
    nnoremap ,fech :let @+ = expand("%")<return>o<esc>pO<esc>/controllers<return>cgnhelpers<esc>/_controller\.rb<return>cgn_helper.rb<esc><up>dddd:e <C-R><C-R>+
    " File Edit View to Helper
    nnoremap ,fevh :let @+ = expand('%:h')<return>o<esc>pO<esc>/views<return>cgnhelpers<esc>A_helpehelperup>dddd:e <C-R><C-R>+
    " File Edit View to View
    nmap ,fevv ,fepa
    " File Edit View to Controller
    nnoremap ,fevc :let @+ = expand('%:h')<return>o<esc>pO<esc>/views<return>cgncontrollers<esc>A_controller.rb<esc><up>dddd:e <C-R><C-R>+
    " File Edit Helper to Controller 
    nnoremap ,fehc :let @+ = expand("%")<return>o<esc>pO<esc>/helpers<return>cgncontrollers<esc>/_helper\.rb<return>cgn_controller.rb<esc><up>dddd:e <C-R><C-R>+
    " File Edit Helper to Views 
    nnoremap ,fehv :let @+ = expand("%")<return>o<esc>pO<esc>/helpers<return>cgnviews<esc>/_helper\.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
  "
  nmap <silent> ,faas <space>fT/app<return><return>/assets<return><return><esc>:noh<return>
  nnoremap <silent> ,caas :edit app/assets/<space><backspace>
  " Edit App Assets Css (stylesheets)
  nmap <silent> ,faac <space>fT/app<return><return>/assets<return><return>/stylesheets<return><return><esc>:noh<return>
  nnoremap <silent> ,caac :edit app/assets/stylesheets/<space><backspace>
  "
  nmap <silent> ,fach <space>fT/app<return><return>/channels<return><return><esc>:noh<return>
  nnoremap <silent> ,cach :edit app/channels/<space><backspace>
  "
  nmap <silent> ,faco <space>fT/app<return><return>/controllers<return><return><esc>:noh<return>
  nnoremap <silent> ,caco :edit app/controllers/<space><backspace>
  "
  nmap <silent> ,fahe <space>fT/app<return><return>/helpers<return><return><esc>:noh<return>
  nnoremap <silent> ,cahe :edit app/helpers/<space><backspace>
  "
  nmap <silent> ,faja <space>fT/app<return><return>/javascript<return><return><esc>:noh<return>
  nnoremap <silent> ,caja :edit app/javascript/<space><backspace>
  "
  nmap <silent> ,fajp <space>fT/app<return><return>/javascript<return><return>/packs<return><return><esc>:noh<return>
  nnoremap <silent> ,cajp :edit app/javascript/packs/<space><backspace>
  "
  nmap <silent> ,fajo <space>fT/app<return><return>/jobs<return><return><esc>:noh<return>
  nnoremap <silent> ,cajo :edit app/jobs/<space><backspace>
  " Edit App/MAilers
  nmap <silent> ,fama <space>fT/app<return><return>/mailers<return><return><esc>:noh<return>
  nnoremap <silent> ,cama :edit app/mailers/<space><backspace>
  " Edit App/MOddels
  nmap <silent> ,famo <space>fT/app<return><return>/models<return><return><esc>:noh<return>
  nnoremap <silent> ,camo :edit app/models/<space><backspace>
  " Edit App/Mddels/aBility.rb Cancancan
  nmap <silent> ,famc <space>fT/app<return><return>/models<return><return>/ability.rb<return><return><esc>:noh<return>
  "
  nmap <silent> ,favi <space>fT/app<return><return>/views<return><return><esc>:noh<return>
  nnoremap <silent> ,cavi :edit app/views/<space><backspace>
  "
  nmap <silent> ,fcon <space>fT/config<return><return><esc>:noh<return>
  nnoremap <silent> ,ccon :edit config/<space><backspace>
  "
  nnoremap <silent> ,fcro :edit config/routes.rb<return>
  "
  nnoremap <silent> ,fdsc :edit db/schema.rb<return>
  "
  nmap <silent> ,fdmi <space>fT/db<return><return>/migrate<return><return><esc>:noh<return>
  nnoremap <silent> ,cdmi :edit db/migrate/<space><backspace>
  "
  nmap <silent> ,flib <space>fT/lib<return><return><esc>:noh<return>
  nnoremap <silent> ,clib :edit lib/<space><backspace>
  "
  nmap <silent> ,ftes <space>fT/test<return><return><esc>:noh<return>
  nnoremap <silent> ,ctes :edit test/<space><backspace>
  "
  nmap <silent> ,ftco <space>fT/test<return><return>/controllers<return><return><esc>:noh<return>
  nnoremap <silent> ,ctco :edit test/controllers/<space><backspace>
  "
  nmap <silent> ,ftmo <space>fT/test<return><return>/models<return><return><esc>:noh<return>
  nnoremap <silent> ,ctmo :edit test/models/<space><backspace>
  " File Test FIxtures
  nmap <silent> ,ftfi <space>fT/test<return><return>/fixtures<return><return><esc>:noh<return>
  nnoremap <silent> ,ctfi :edit test/fixtures/<space><backspace>
  " File Test Mailers
  nmap <silent> ,ftma <space>fT/test<return><return>/mailers<return><return><esc>:noh<return>
  nnoremap <silent> ,ctma :edit test/fixtures/mailers/<space><backspace>
  " File Test Mailers Previews
  nmap <silent> ,ftmp <space>fT/test<return><return>/mailers<return><return>/previews<return><return><esc>:noh<return>
  nnoremap <silent> ,ctmp :edit test/fixtures/mailers/previews/<space><backspace>
  "
  nmap <silent> ,fven <space>fT/vendor<return><return><esc>:noh<return>
  nnoremap <silent> ,cven :edit vendor/<space><backspace>
  " Edit GEMfile
  nmap <silent> ,fgem <space>fT/Gemfile<return><return><esc>:noh<return>

" View templates Mappings
  "  View templates Page
    " View templates Page BAse
    nnoremap <silent> ,vpba :read ../templates/views/page/base.html.erb<return>ggdd/ChangeNavTypeOrDeleteThisLine\\|DeleteThisPls\\|ChangeTemplate\\|ChangePath\\|ChangeLocals<return>
    " View templates Page STylesheets
    nnoremap <silent> ,vpst :read ../templates/views/page/stylesheets.html.erb<return>/DeleteThisNote\\|ChangePath<return>
    " View templates Page Javascript Packs
    nnoremap <silent> ,vpjp :read ../templates/views/page/javascript_packs.html.erb<return>/DeleteThisNote\\|ChangePath\\|Etc\.<return>
    " View templates Page  Non Pack javascriopts
    nnoremap <silent> ,vpnp :read ../templates/views/page/non_pack_javascripts.html.erb<return>/ChangePath<return>
    " View templates Page End of Body
    nnoremap <silent> ,vpeb :read ../templates/views/page/end_of_body.html.erb<return>/DeleteThisNote<return>
    " View templates Page End Of body - alternate mapping
    nmap <silent> ,vpeo ,vpeb
    " View templates Page Header Base
    nnoremap <silent> ,vphb :read ../templates/views/page/header_base.html.erb<return>/ChangeThisPls\\|ChangeDisplay\\|ChangeUrl<return>
    " View templates Page TAbs base
    nnoremap <silent> ,vptb :read ../templates/views/page/tabs_base.html.erb<return>/ChangeThisPls\\|ChangeDisplay\\|ChangeUrl<return>
    " View templates Page Body Base
    nnoremap <silent> ,vpbb :read ../templates/views/page/body_base.html.erb<return>/ChangePath\\|ChangeTemplate\\|ChangeCardName\\|ChangeWidth\\|ChangeLocals<return>
    " View templates Page Body Full height columns
    nnoremap <silent> ,vpbf :read ../templates/views/page/body_full_height_columns.html.erb<return>/ChangeColumnName\\|d-xx-or-larger\\|background-color: ChangeBackgroundColor\\|ChangeWidth\\|overflow-y: scroll\\|DeleteThis\\|ChangePath\\|ChangeLocals<return>
    " View templates Page Body full height Columns - alternate mapping
    nmap <silent> ,vpbc ,vpbf
  " View templates Card
    " View templates Card BAse
    nnoremap <silent> ,vcba :read ../templates/views/card/base.html.erb<return>/ChangeThisPls\\|DeleteThisPls<return>
    " View templates Card Non-Card
    nnoremap <silent> ,vcnc :read ../templates/views/card/non_card.html.erb<return>/DeleteThisPls<return>
    " View templates Card WIde
    nnoremap <silent> ,vcwi :read ../templates/views/card/wide.html.erb<return>/DeleteThisPls<return>
    " View templates Card Header Base
    nnoremap <silent> ,vchb :read ../templates/views/card/header_base.html.erb<return>/ChangeThisPls<return>
  " View templates card Body
    " View templates card Body Single Show
    nnoremap <silent> ,vbss :read ../templates/views/card_body/single_show.html.erb<return>/ChangeThisPls<return>
    " View templates card Body Single show Edit swap
    nnoremap <silent> ,vbse :read ../templates/views/card_body/single_show_edit_swap.html.erb<return>/ChangeThisPls<return>
  " View templates Show edit swap BAse
    " View templates card Body Single show Edit swap
    nnoremap <silent> ,vsba :read ../templates/views/show_edit_swap/base.html.erb<return>/ChangeSesId\\|ChangePath\\|ChangeLocals<return>
  " Forms
    " View templates Forms BAse
    nnoremap <silent> ,vfba :read ../templates/views/forms/base.html.erb<return>/ChangeThisPls\\|DeleteThisPls<return>
    " View templates Forms non-standard forms Array Simple
    nnoremap <silent> ,vfas :read ../templates/views/forms/non_standard_forms/array_simple.html.erb<return>/ChangeModel\\|ChangeUrl\\|ChangeMethod\\|ChangeParentForm\\|ChangeObjects\\|ChangeObject\\|ChangeAttributes\\|ChangeAttribute\\|ReplaceThis\\|DeleteThis:<return>
    " View templates Forms non-standard forms Array Hash
    nnoremap <silent> ,vfah :read ../templates/views/forms/non_standard_forms/array_hash.html.erb<return>/ChangeModel\\|ChangeScop\\|ChangeUrl\\|ChangeMethod\\|ChangeParentForm\\|ChangeObjects\\|ChangeObject\\|ReplaceThis\\|DeleteThis:\\|ChangeAttribute<return>
  " View templates Modals
    " View templates Mdoels BAse
    nnoremap <silent> ,vmba :read ../templates/views/modals/base.html.erb<return>
    " View templates Models Contents Base
    nnoremap <silent> ,vmcb :read ../templates/views/modals/contents_base.html.erb<return>/DivOrP\\|DeleteThis<return>
    " View templates Models Contents Destroy
    nnoremap <silent> ,vmcd :read ../templates/views/modals/contents_destroy.html.erb<return>/DeleteThis\\|ChangeObject\\|ChangeAttribute\\|ChangeName\\|ChangeUrl\\|SetToTrueOrRemove<return>
    " View templates Models Contents Image
    nnoremap <silent> ,vmci :read ../templates/views/modals/contents_image.html.erb<return>/DeleteThis\\|ChangeObject\\|ChangeProcessedAttribute<return>
    " View templates Mdoels Header Base
    nnoremap <silent> ,vmhb :read ../templates/views/modals/header_base.html.erb<return>/ChangeIconColor\\|DeleteThis\\|ChangeIconType\\|ChangeTitle<return>
    " View templates Mdoels Close button Group
    nmap <silent> ,vmcg :read ../templates/views/modals/close_button_base.html.erb<return>/DeleteThis<return>
    " View templates Mdoels Info Modal and button
    nmap <silent> ,vmim :read ../templates/views/modals/info_modal_and_button.html.erb<return>/ChangeModalId\\|ChangeTitle\\|ChangeContent<return>

" Embedded
  " Embedded Ruby
    " Embedded Ruby ERb
    nnoremap <silent> ,erer a<%  %><esc>hhh
    " Embedded Ruby Erb Entered
    nnoremap <silent> ,eree a<%=  %><esc>hhh
    " Embedded Ruby Erb # comment
    nnoremap <silent> ,ere# a<%#  %><esc>hhi
    " Embedded Ruby IF
    nnoremap <silent> ,erif a<% if ChangeThisPls %><esc>o<% end %><esc>/ChangeThisPls<return>
    " Embedded Ruby IF inline
    nnoremap <silent> ,eriF a<% ChangeThisPls if ChangeThisPls %><esc>/ChangeThisPls<return>
    " Embedded Ruby If Else
    nnoremap <silent> ,erie a<% if ChangeThisPls %><esc>o<% else %><esc>o<% end %><esc>/ChangeThisPls<return>
    " Embedded Ruby If Else else
    nnoremap <silent> ,eriE a<% if ChangeThisPls %><esc>o<% elsif ChangeThisPls %><esc>o<% else %><esc>o<% end %><esc>/ChangeThisPls<return>
    " Embedded Ruby UNless
    nnoremap <silent> ,erun a<% unless ChangeThisPls %><return><% end %><esc>/ChangeThisPls<return>
    " Embedded Ruby UNless inline
    nnoremap <silent> ,eruN a<% ChangeThisPls unless ChangeThisPls %><esc>/ChangeThisPls<return>
    " Embedded Ruby CAse
    nnoremap <silent> ,erca a<% case ChangeThisPls %><return><% when ChangeThisPls %><return><% else %><return><% end %><esc>/ChangeThisPls<return>
    " Embedded Ruby EAch
    nnoremap <silent> ,erea a<% ChangeThisPls.each do \|ChangeThisPls\| %><return><% end %><esc>/ChangeThisPls<return>
    " Embedded Ruby Each With index
    nnoremap <silent> ,erew a<% ChangeThisPls.each_with_index do <bar>ChangeThisPls, index<bar> do %><return><% end %><esc>/ChangeThisPls<return>
    " Embedded Ruby Ordere dList
    nnoremap <silent> ,erol a<ol><return><% ChangeThisPls.each do \|ChangeThisPls\| %><return><li>ChangeThisPls</li><return><% end %><return></ol><esc>/ChangeThisPls<return>
    " Embedded Ruby Unordered List
    nnoremap <silent> ,erul a<ul><return><% ChangeThisPls.each do \|ChangeThisPls\| %><return><li>ChangeThisPls</li><return><% end %><return></ul><esc>/ChangeThisPls<return>
    " Embedded Ruby ENd
    nnoremap <silent> ,eren a<% end %><esc>
    " Embedded Ruby Link To
    nnoremap <silent> ,erlt a<%= link_to(ChangeDisplay, ChangeUrl_url) %><esc>/ChangeDisplay\\|ChangeUrl<return>
    " Embedded Ruby Link to Icon (classes only)
    nnoremap <silent> ,erli apx-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon<esc>/ChangeColor\\|ChangeIcon<return>
    " Embedded Ruby Link to Icon (full)
    nnoremap <silent> ,erlI a<%= link_to('', ChangeUrl_url, class: 'px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon') %><esc>/ChangeUrl\\|ChangeColor\\|ChangeIcon<return>
    " Embedded Ruby Link to Button (classes only)
    nnoremap <silent> ,erlb abtn btn-ChangeColor<esc>/ChangeColor<return>
    " Embedded Ruby Link to Button (full)
    nnoremap <silent> ,erlB a<%= link_to(ChangeDisplay, ChangeUrl_url, class: 'btn btn-ChangeColor') %><esc>/ChangeDisplay\\|ChangeUrl\\|ChangeColor<return>
    " Embedded Ruby Link to Ajax
    nnoremap <silent> ,erla a<%= link_to(ChangeDisplay, ChangeUrl_url, method: :ChangeMethod, remote: true) %><esc>/ChangeDisplay\\|ChangeUrl\\|ChangeMethod<return>
    " Embedded Ruby Link to No href
    nmap <silent> ,erln a<%= content_tag('A', ChangeDisplay, class: "no-href-link no-href-icon") %><return><esc>,mmno_href_comment<esc>/ChangeDisplay\\|no-href-link\\|no-href-icon\\|DeleteThis<return>
    " Embedded Ruby Link to Modal
    nmap <silent> ,erlm a<%= content_tag('A', ChangeDisplay, class: "no-href-link no-href-icon", data: { toggle: "modal", target: "#ChangeModalId-#{ChangeErbIfNecessary}-modal" }) %><return><esc>,mmno_href_comment<esc>,ermc/ChangeDisplay\\|ChangeColor\\|no-href-link\\|no-href-icon\\|DeleteThis\\|ChangeModalId\\|ChangeErbIfNecessary\\|ChangePath\\|ChangeModal\\|ChangeLocals<return>
    " Embedded Ruby Modal Container
    nmap <silent> ,ermc :read ../templates/views/elements/buttons_and_links/modal_container_after_modal_button.html.erb<return>/ChangeModalId\\|ChangeErbIfNecessary\\|ChangePath\\|ChangeModal\\|ChangeLocals<return>
    " Embedded Ruby Link to Remote (attributes only)
    nnoremap <silent> ,erlr a remote: true, method: :ChangeMethod,<esc>/ChangeMethod<return>
    " Embedded Ruby Link to Remote (full)
    nnoremap <silent> ,erlR a<%= link_to(ChangeDisplay, ChangeUrl_url, remote: true, method: :ChangeMethod) %><esc>/ChangeDisplay\\|ChangeUrl\\|ChangeMethod<return>
    " Embedded Ruby Image Tag
    nnoremap <silent> ,erit a<%= image_tag(ChangeThisPls, alt: 'ChangeThisPls', width: 'ChangeThisPls', height: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
    " Embedded Ruby Javascript Tag
    nnoremap <silent> ,erjt a<%= javascript_include_tag('ChangePath') %><esc>/ChangePath<return>
    " Embedded Ruby Javascript Pack
    nnoremap <silent> ,erjp a<%= javascript_pack_tag('ChangePath', 'data-turbolinks-track': 'reload') %><esc>/ChangePath<return>
    " Embedded Ruby StyleSheet
    nnoremap <silent> ,erss a<%= stylesheet_link_tag('ChangeThisPls') %><esc>/ChangeThisPls<return>
    " Embedded Ruby PArtial
    nnoremap <silent> ,erpa a<%= render(partial: 'ChangePath', locals: { ChangeLocals }) %><esc>/ChangePath\\|ChangeLocals<return>
    " Embedded Ruby PArtial (full)
    nnoremap <silent> ,erpA a<div id="ChangeId"><return><%= render(partial: 'ChangePath', locals: { ChangeLocals }) %><return></div><esc>/ChangeId\\|ChangePath\\|ChangeLocals<return>
    " Embedded Ruby Partials for Show edit swap
    nmap <silent> ,erps ,vsba
    " Embedded Ruby Puts Debugger
    nnoremap <silent> ,erpd a<% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts nil %><return><% puts 'ChangeLabel:' %><return><% puts ChangeThisPls %><esc>/ChangeLabel\\|ChangeThisPls<return>
    " Html Ruby Escape Javascript with partial
    nnoremap <silent> ,erej a<%= escape_javascript(render(partial: 'ChangePath', locals: { ChangeLocals })) %><esc>/ChangePath\\|ChangeLocals<return>

" Html mappings
  " Html Elements
    " Html Elements ATtributes
    nnoremap <silent> ,heat a <return>id="ChangeThisPls" <return>class="ChangeThisPls" <return>style="ChangeThisPls" <return>data-ChangeThisPls="ChangeThisPls"<return><esc>/ChangeThisPls<return>
    " Html Elements DIv
    nnoremap <silent> ,hedi a<div><return></div><esc>k
    " Html Elements Div with Class
    nnoremap <silent> ,hedc a<div class="ChangeClass"><return></div><esc>/ChangeClass<return>
    " Html Elements PAragraph
    nnoremap <silent> ,hepa a<p><return>ChangeThisPls<return></p><esc>/ChangeThisPls<return>
    " Html Elements SPan
    nnoremap <silent> ,hesp a<span>ChangeThisPls</span><esc>/ChangeThisPls<return>
    " Html Elements STrong
    nnoremap <silent> ,hest a<strong>ChangeThisPls</strong><esc>/ChangeThisPls<return>
    " Html Elements BUtton
    nnoremap <silent> ,hebu a<button class="btn btn-ChangeColor">ChangeText</button><esc>/ChangeColor\\|ChangeText<return>
    " Html Elements Button Icon (classes only)
    nnoremap <silent> ,hebi abtn-icon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon<esc>/ChangeColor\\|ChangeIcon<return>
    " Html Elements Button Icon (full)
    nnoremap <silent> ,hebI a<button class="btn-icon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon"></button><esc>/ChangeColor\\|ChangeIcon<return>
    " Html Elements Button Link (classes only)
    nnoremap <silent> ,hebl abtn-link<esc>
    " Html Elements Button Link (full)
    nnoremap <silent> ,hebL a<button class="btn-link">ChangeText</button><esc>/ChangeText<return>
    " Html Elements TAble
    nnoremap <silent> ,heta a<table><esc>o</table><esc>k
    " Html Elements TAble
    " Html Elements TAble full
    " Html Elements TAble really full
    " Html Elements Table capsHead
    nnoremap <silent> ,hetH a<thead><esc>o</thead><esc>k
    " Html Elements Table Row
    nnoremap <silent> ,hetr a<tr><esc>o</tr><esc>k
    " Html Elements Table Header cell
    nnoremap <silent> ,heth a<th><esc>o</th><esc>k
    " Html Elements Table Body
    nnoremap <silent> ,hetb a<tbody><esc>o</tbody><esc>k
    " Html Elements Table Data cell
    nnoremap <silent> ,hetd a<td><esc>o</td><esc>k
    " Html Elements Table Footer
    nnoremap <silent> ,hetf a<tfoot><esc>o</tfoot><esc>k
    " Html Elements Ordered List
    nnoremap <silent> ,heol a<ol><return><li>ChangeThisPls</li><return></ol><esc>/ChangeThisPls<return>
    " Html Elements Unordered List
    nnoremap <silent> ,heul a<ul><return><li>ChangeThisPls</li><return></ul><esc>/ChangeThisPls<return>
    " Html Elements CUstom
    nnoremap <silent> ,hecu a<ChangeThisPls></ChangeThisPls><esc>/ChangeThisPls<return>


  " Html Form
    " Html Form WIth
    nnoremap <silent> ,hfwi a<%= form_with(model: ChangeThisPls, scope: 'ChangeThisPls', url: ChangeThisPls, method: :ChangeThisPls) do \|ChangeThisPls_form\| %><esc>o<% end %><esc>/ChangeThisPls<return>
    " Html Form Full Errors
    nnoremap <silent> ,hffe a<%= render(partial: 'shared/full_errors', locals: { errors_hash: ChangeThisPls.errors.messages, ian: false }) %><esc>/ChangeThisPls<return>
    " Html Form Fields For
    nnoremap <silent> ,hfff a<%= ChangeThisPls_form.fields_for(:ChangeScope, ChangeModel) do \|ChangeThisPls_form\| %><return><% end %><esc>/ChangeThisPls\\|ChangeScope\\|ChangeModel<return>
    " Html Form LAbel
    nnoremap <silent> ,hfla a<%= ChangeThisPls_form.label(:ChangeAttribute, 'ChangeDisplay', class: 'col-form-label') %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
    " Html Form Label Block
    nnoremap <silent> ,hflb a<%= ChangeThisPls_form.label(:ChangeAttribute, class: 'col-form-label') do %>ChangeDisplay<% end %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
    " Html Form Label for Checkboxes
    " NOTE: this is used by the checkbox mappings so if you chnage this, you
    " need to update those as well...
    nnoremap <silent> ,hflc a<%= ChangeForm_form.label(:ChangeAttribute, 'ChangeDisplay', class: "custom-control-label text-wrap") %><return><%# NOTE: for blank label, make this a block with a blank space (" ") between the do and end %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeDisplay<return>
    " Html Form Label Tag
    nnoremap <silent> ,hflt a<%= label_tag(:ChangeAttribute, 'ChangeDisplay', class: 'col-form-label') %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>

  " Html form Show elements
    " Html form Show Left Label wrapper
    nmap <silent> ,hsll a<div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group col-12 pr-0"><return><%= label_tag(:ChangeAttribute, 'ChangeDisplay:', class: 'col-form-label') %><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="form-row"><return><%#<delete> DeleteThis - insert Html form Show Group %><return></div><return></div><return></div><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay\\|DeleteThis<return>
    " Html form Top Label (for top label)
    nmap <silent> ,hstl a<div class="form-row"><return><%#<delete> DeleteThis - insert Show Group %><return></div><esc>/DeleteThis<return>
    " Html form Show ROw
    nmap <silent> ,hsro a<div class="form-row"><return></div><esc>,O
    " Html form Show Group 1
    nmap <silent> ,hsg1 a<div class="form-group col-12"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,o,hssio</div><esc>/DeleteThis\\|ChangeDisplay<return>
    " Html form Show Group 2
    nmap <silent> ,hsg2 a<div class="form-group col-12 col-sm-6"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,o,hssio</div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yP
    " Html form Show Group 3
    nmap <silent> ,hsg3 a<div class="form-group col-12 col-sm-4"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,o,hssio</div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yPP
    " Html form Show Group 4
    nmap <silent> ,hsg4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,o,hssio</div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yPPP
    " Html form Show element SImple
    nnoremap <silent> ,hssi a<div class="sse">ChangeDisplay</div><esc>/ChangeDisplay<return>
    " Html form Show show edit swap Edit Button
    nnoremap <silent> ,hseb a<a class="btn btn-primary ChangeSesId-ses-edit-button">ChangeDisplay</a><esc>/ChangeSesId\\|ChangeDisplay<return>
    " Html form Show show edit swap Edit button Icon
    nnoremap <silent> ,hsei a<a class="no-href-icon px-3 fs-4 text-primary mdi mdi-edit ChangeSesId-ses-edit-button"></a><esc>/ChangeSesId<return>
    " Html form Show show edit swap Edit button Link
    nnoremap <silent> ,hsel a<a class="no-href-link ChangeSesId-ses-edit-button"></a><esc>/ChangeSesId<return>
    " Html form Show show edit swap Edit button Modal (data attribute only)
    nnoremap <silent> ,hsem adata-toggle="modal" data-target="ChangeModalId-<% ChangeErbIfNecessary %>-modal"<esc>/ChangeModalId\\|ChangeErbIfNecessary<return>

  " Html form Inputs
    " Html form Input Left Label wrapper
    nmap <silent> ,hill a<div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group col-12 pr-0"><return><%= ChangeThisPls_form.label(:ChangeAttribute, 'ChangeDisplay:', class: 'col-form-label') %><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="form-row"><return><%#<delete> DeleteThis - insert Html form Input Group OR Cancel & Submit buttons %><return></div><return></div><return></div><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay\\|DeleteThis<return>
    " Html form Top Label (for top label)
    nmap <silent> ,hitl a<div class="form-row mb-2"><return><%#<delete> DeleteThis - insert Input Group OR Cancel & Submit buttons %><return></div><esc>/DeleteThis<return>
    " Html form Input ROw (for top label)
    nmap <silent> ,hiro a<div class="form-row"><return></div><esc>,O
    " Html form Input Group 1
    nmap <silent> ,hig1 a<div class="form-group col-12"><return><%#<delete> DeleteThis: insert label if top label %><esc>,o,mminsert_input<down>,o,hiieo</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return>
    " Html form Input Group 2
    nmap <silent> ,hig2 a<div class="form-group col-12 col-sm-6"><return><%#<delete> DeleteThis: insert label if top label %><esc>,o,mminsert_input<down>,o,hiieo</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yP
    " Html form Input Group 3
    nmap <silent> ,hig3 a<div class="form-group col-12 col-sm-4"><return><%#<delete> DeleteThis: insert label if top label %><esc>,o,mminsert_input<down>,o,hiieo</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yPP
    " Html form Input Group 4
    nmap <silent> ,hig4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><%#<delete> DeleteThis: insert label if top label %><esc>,o,mminsert_input<down>,o,hiieo</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yPPP
    " Html form Input Group Cancel & submit buttons
    nmap <silent> ,higc :read ../templates/views/elements/buttons_and_links/cancel_and_submit_buttons.html.erb<return>/ChangeSesId\\|ChangeForm<return>
    " Html form Input Group cancel & submit Icons
    nmap <silent> ,higi :read ../templates/views/elements/buttons_and_links/cancel_and_submit_button_icons.html.erb<return>/ChangeSesId<return>
    " Html form Input Group cancel & submit from Modal
    nmap <silent> ,higm :read ../templates/views/elements/buttons_and_links/cancel_and_submit_modal_buttons.html.erb<return>/ChangeSesId\\|ChangeForm<return>
    " Htmo form Input ATtrubutes common
    nnoremap <silent> ,hiat a, <return>autofocus: true, <return>autocomplete: 'ChangeThisPls', <return>placeholder: 'ChangeThisPls', <return>required: true <return><esc>/ChangeThisPls<return>
    " Htmo form Input common ATtrubutes full
    nnoremap <silent> ,hiaT a, <return>id: 'ChangeThisPls', <return>name: 'ChangeThisPls', <return>type: 'ChangeThisPls', <return>class: 'ChangeThisPls', <return>value: 'ChangeThisPls', <return>autofocus: true, <return>autocomplete: 'ChangeThisPls', <return>placeholder: 'ChangeThisPls', <return>required: true, <return>size: 'ChangeThisPls', <return>maxlength: 'ChangeThisPls', <return>min: 'ChangeThisPls', <return>max: 'ChangeThisPls', <return>step: 'ChangeThisPls', <return>checked: true, <return>readonly: true, <return>disabled: true, <return>multiple: true <return><esc>/ChangeThisPls<return>
    " Htmo form Input Attrubutes Other
    nnoremap <silent> ,hiao a, size: 'ChangeThisPls', <return>maxlength: 'ChangeThisPls', <return>min: 'ChangeThisPls', <return>max: 'ChangeThisPls', <return>step: 'ChangeThisPls', <return>checked: true, <return>readonly: true, <return>disabled: true, <return>multiple: true <return><esc>/ChangeThisPls<return>
    " Html form Input HIdden field
    nnoremap <silent> ,hihf a<%= ChangeThisPls_form.hidden_field(:ChangeThisPls, value: ChangeThisPls) %><esc>/ChangeThisPls<return>
    " Html form Input Hidden field Tag
    nnoremap <silent> ,hiht a<%= hidden_field_tag(:ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
    " Html form Input Text Field
    nnoremap <silent> ,hitf a<%= ChangeForm_form.text_field(<return>  :ChangeAttribute,<return>value: ChangeValue,<return>class: 'form-control',<return>autofocus: true,<return>autocomplete: 'ChangeAutocomplete',<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>maxlength: 'ChangeMaxLength'<return>) %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue\\|true\\|ChangeAutocomplete\\|ChangePlaceholder\\|ChangeMaxLength<return>
    " Html form Input Text Area
    nnoremap <silent> ,hita a<%= ChangeForm_form.text_area(<return>  :ChangeAttribute,<return>value: ChangeValue,<return>class: 'form-control',<return>autofocus: true,<return>autocomplete: 'ChangeAutocomplete',<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>maxlength: 'ChangeMaxLength'<return>) %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue\\|true\\|ChangeAutocomplete\\|ChangePlaceholder\\|ChangeMaxLength<return>
    " Html form Input Rich Text
    nnoremap <silent> ,hirt a<%= ChangeThisPls_form.rich_text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
    " Html form Input Email Field
    nnoremap <silent> ,hief a<%= ChangeThisPls_form.email_field(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
    " Html form Input Checkbox Stacked
    nmap <silent> ,hics a<div><esc>,o,hicw/ChangeForm<return>cgnxxx<esc>./ChangeAttribute<return>cgnyyy<esc>./ChangeDisplay<return>cgnzzz<esc><down><down>,o,hicw<down><down><down>o</div><esc>/xxx<return>cgnChangeForm<esc>./yyy<return>cgnChangeAttribute<esc>./zzz<return>cgnChangeDisplay<esc>/ChangeForm\\|ChangeAttribute\\|ChangeDisplay<return>nnnnn
    " Html form Input Checkbox Inline (exact same as hics but add d-flex to parent div)
    nmap <silent> ,hici a<div class="d-flex"><esc>,o,hicw/ChangeForm<return>cgnxxx<esc>./ChangeAttribute<return>cgnyyy<esc>./ChangeDisplay<return>cgnzzz<esc><down><down>,o,hicw<down><down><down>o</div><esc>/xxx<return>cgnChangeForm<esc>./yyy<return>cgnChangeAttribute<esc>./zzz<return>cgnChangeDisplay<esc>/ChangeForm\\|ChangeAttribute\\|ChangeDisplay<return>nnnnn
    " Html form Input Checkbox Wrapper
    " this is used by by ,hics and ,hici so if you change this you might
    " need to change those as well
    nmap <silent> ,hicw a<div class="pr-2 custom-control custom-checkbox"><esc>,o,hicb<esc>,o,hflc<esc><down><down>o</div><esc>/ChangeForm\\|ChangeAttribute\\|ChangeDisplay<return>
    " Html form Input CheckBox
    " this is used by ,hicw so if you change this you might need to change
    " ,hicw as well
    nnoremap <silent> ,hicb a<%= ChangeForm_form.check_box(:ChangeAttribute, class: 'custom-control-input') %><esc>/ChangeForm\\|ChangeAttribute<return>
    " Html form Input CheckBox full
    nnoremap <silent> ,hicB a<%= ChangeThisPls_form.check_box(:ChangeThisPls, { class: 'custom-control-input' }, ChangeThisPls, false) %><esc>/ChangeThisPls<return>
    " Html form Input Toggle Wrapper
    nnoremap <silent> ,hitw :read ../templates/views/elements/toggle_wrapper.html.erb<return>/DeleteThis<return>
    " Html form Input Toggle with Form
    nnoremap <silent> ,hitf :read ../templates/views/elements/toggle_with_form.html.erb<return>/ChangeModel\\|ChangeScope\\|ChangeUrl\\|ChangeMethod\\|ChangeId\\|ChangeForm\\|ChangeColor\\|switch-button-yesno\\|DeleteThis\\|ChangeAttribute<return>
    " Html form Input TOggle
    nnoremap <silent> ,hito :read ../templates/views/elements/toggle.html.erb<return>/ChangeForm\\|ChangeColor\\|switch-button-yesno\\|DeleteThis\\|ChangeAttribute<return>
    " Html form Input Password field
    nnoremap <silent> ,hipf a<%= ChangeThisPls_form.password_field(:password, class: 'form-control') %><esc>/ChangeThisPls<return>
    " Html form Input Password Confirmation
    nnoremap <silent> ,hipc a<%= ChangeThisPls_form.password_field(:password_confirmation, class: 'form-control') %><esc>/ChangeThisPls<return>
    " Html form Input SElect
    nnoremap <silent> ,hise a<%= ChangeForm_form.select(<return>  :ChangeAttribute,<return>ChangeOptionsArray,<return>{ include_blank: "Select" },<return>{ class: 'form-control',<return>  autofocus: true,<return>required: true<return><backspace>})<return>%><esc>/ChangeForm\\|ChangeAttribute\\|ChangeOptionsArray\\|autofocus\\|required<return>
    " Html form Input Select Options for select
    nnoremap <silent> ,hiso a<%= ChangeForm_form.select(<return>  :ChangeAttribute,<return>options_for_select(ChangeOptionsArray, ChangeSelectedOption),<return>{ include_blank: "Select" },<return>{ class: 'form-control',<return>  autofocus: true,<return>required: true<return><bacut<down>space>})<return>%><esc>/ChangeForm\\|ChangeAttribute\\|ChangeOptionsArray\\|ChangeSelectedOption\\|autofocus\\|required<return>
    " Html form Input Select Grouped options for select
    nnoremap <silent> ,hisg a<%= ChangeForm_form.select(<return>  :ChangeAttribute,<return>grouped_options_for_select(ChangeOptionsHash, ChangeSelectedOption),<return>{ include_blank: "Select" },<return>{ class: 'form-control',<return>  autofocus: true,<return>required: true<return><backspace>})<return>%><esc>/ChangeForm\\|ChangeAttribute\\|ChangeOptionsHash\\|ChangeSelectedOption\\|autofocus\\|required<return>
    " Html form Input Select Block
    nnoremap <silent> ,hisb a<%= ChangeThisPls_form.select(:ChangeThisPls , [], { include_blank: "Select" }, { class: 'form-control' }) do %><esc>o<% end %><esc>/ChangeThisPls<return>
    " Html form Input OPtion
    nnoremap <silent> ,hiop a<option <%= "selected='true'" if ChangeThisPls %> value="<%= ChangeThisPls %>">ChangeThisPls</option><esc>/ChangeThisPls<return>
    " Html form Input Inline Errors
    nnoremap <silent> ,hiie a<%= render(partial: 'shared/inline_errors', locals: { errors: ChangeObject.errors.messages[:ChangeAttribute] }) %><esc>/ChangeObject\\|ChangeAttribute<return>
    " Html form Input SUbmit
    nnoremap <silent> ,hisu a<%= ChangeForm_form.submit(:ChangeDisplay, class: 'btn btn-ChangeColor') %><esc>/ChangeForm\\|ChangeDisplay\\|ChangeColor<return>
    " Html form Input Submit Link
    nnoremap <silent> ,hisl a<%= ChangeForm_form.submit(:ChangeDisplay, class: 'btn-link') %><esc>/ChangeForm\\|ChangeDisplay<return>
    " Html Form Input Submit with Image
    nnoremap <silent> ,hisi a<%= image_submit_tag('ChangePathAndFileName', alt: 'ChangeAltText', width: 'ChangeWidth', height: 'auto') %><esc>/ChangePathAndFileName\\|ChangeAltText\\|ChangeWidth<return>
    " Html Form CUstom Field
    nnoremap <silent> ,hicu a<%= ChangeThisPls_form.ChangeThisPls(:ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>

" ruby mappings
  " ruby basics
    " Ruby Basic Frozen String
    nnoremap <silent> ,rbfs a# frozen_string_literal: true
    " Ruby Basic EAch block
    nnoremap <silent> ,rbea aeach do \|ChangeThisPls\|<return>ChangeThisPls<return>end<esc>/ChangeThisPls<return>
    " Ruby Basic EAch inline
    nnoremap <silent> ,rbeA aeach { \|ChangeThisPls\| ChangeThisPls }<esc>/ChangeThisPls<return>
    " Ruby Basic Each With index block
    nnoremap <silent> ,rbew aeach_with_index do \|ChangeThisPls, index\|<return>ChangeThisPls<return>end<esc>/ChangeThisPls<return>
    " Ruby Basic Each With index inline
    nnoremap <silent> ,rbeW aeach_with_index { \|ChangeThisPls, index\| ChangeThisPls }<esc>/ChangeThisPls<return>
    " Ruby Basic MAp block
    nnoremap <silent> ,rbma amap do \|ChangeThisPls\|<return>ChangeThisPls<return>end<esc>/ChangeThisPls<return>
    " Ruby Basic MAp inline
    nnoremap <silent> ,rbmA amap { <bar>ChangeThisPls<bar> ChangeThisPls }<esc>/ChangeThisPls<return>
    " Ruby Basic SElect block
    nnoremap <silent> ,rbse aselect <bar>ChangeThisPls<bar><return>ChangeThisPls<return>end<esc>/ChangeThisPls<return>
    " Ruby Basic SElect inline
    nnoremap <silent> ,rbsE aselect { <bar>ChangeThisPls<bar> ChangeThisPls }<esc>/ChangeThisPls<return>
    " Ruby Basic IF
    nnoremap <silent> ,rbif aif ChangeThisPls<return>end<esc>/ChangeThisPls<return>
    " Ruby Basic IF inline
    nnoremap <silent> ,rbiF aChangeThisPls if ChangeThisPls<esc>/ChangeThisPls<return>
    " Ruby Basic If Else
    nnoremap <silent> ,rbie aif ChangeThisPls<return>else<return>end<esc>/ChangeThisPls<return>
    " Ruby Basic If Else if else
    nnoremap <silent> ,rbiE aif ChangeThisPls<return>elsif ChangeThisPls<return>else<return>end<esc>/ChangeThisPls<return>
    " Ruby Basic Unless
    nnoremap <silent> ,rbun aunless ChangeThisPls<return>end<esc>/ChangeThisPls<return>
    " Ruby Basic Unless
    nnoremap <silent> ,rbuN aChangeThisPls unless ChangeThisPls<esc>/ChangeThisPls<return>
    " Ruby Basic CAse
    nnoremap <silent> ,rbca acase ChangeThisPls<return>when ChangeThisPls<return>else<return>end<esc>/ChangeThisPls<return>
    " Ruby Basic TErnary
    nnoremap <silent> ,rbte aChangeBoolean ? ChangeTrueResult : ChangeFalseResult<esc>/ChangeBoolean\\|ChangeTrueResult\\|ChangeFalseResult<return>
    " Ruby Basic Puts Debugger
    nnoremap <silent> ,rbpd aputs 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts nil<return>puts 'ChangeLabel:'<return>puts ChangeThisPls<esc>/ChangeLabel\\|ChangeThisPls<return>
    " Ruby Basic puts Json pretty Generate
    nnoremap <silent> ,rbjg aputs JSON.pretty_generate(ChangeHash)<esc>/ChangeHash<return>
    " Ruby Basic puts Json pretty Generate
    nnoremap <silent> ,rbjp aJSON.parse(ChangeNonHash)<esc>/ChangeNonHash<return>

    nnoremap <silent> ,rbde adef <esc>oend<esc>kla

    nnoremap <silent> ,rbdo ado<return>end<esc>O
    " Ruby Basic Can Model based
    nnoremap <silent> ,rbcm acan?(:ChangeNamespace_ChangePermission, @ChangeModel)<esc>/ChangeNamespace\\|ChangePermission\\|ChangeModel<return>
    " Ruby Basic Can Non-mmodel Model based
    nnoremap <silent> ,rbcn acan?(:ChangeNamespace_ChangeVerb, :ChangeObjects)<esc>/ChangeNamespace\\|ChangeVerb\\|ChangeObjects<return>
    " Ruby Basic Interpolated String
    nnoremap <silent> ,rbis a#{}<esc>i
    " Ruby Basic ORder
    nnoremap <silent> ,rbor aorder(:ChangeAttribute)<esc>/ChangeAttribute<return>
    " Ruby Basic Order Descending
    nnoremap <silent> ,rbod aorder(ChangeAttribute: :desc)<esc>/ChangeAttribute<return>
    " Ruby Basic Order Case insensitive
    nnoremap <silent> ,rboc aorder("LOWER(ChangeAttribute)")<esc>/ChangeAttribute<return>
    " Ruby Basic ORder (full)
    nnoremap <silent> ,rboR aorder("LOWER(ChangeAttribute) DESC")<esc>/ChangeAttribute<return>
    " Ruby Basic Dir
    nmap <silent> ,rbdi ,mmdir_notesaDir['app/ChangePath/**/*.ChangeExtension*'].each do \|path\|<return># DeleteThisNote: add logic here...<return>DeleteThisNote: use this to clean file name: path.remove('<delete>app/ChangePath/').split('<delete>.ChangeExtension').first<return><backspace><backspace>end<esc>/DeleteThisNote\\|ChangePath\\|ChangeExtension<return>


  " Ruby model mappings
    " Ruby Models Can Model based
    nnoremap <silent> ,rmcm acan [:ChangeNamespace_ChangePermission], ChangeModel, ChangeMethod: user.ChangeValue<esc>/ChangeNamespace\\|ChangePermission\\|ChangeModel\\|ChangeMethod\\|ChangeValue<enter>
    " Ruby Models Can Model based full
    nnoremap <silent> ,rmcM acan [:ChangeNamespace_ChangePermission], ChangeModel, ChangeMethod: user.ChangeValue, ChangeMethod: [ChangeValue], ChangeMethod: { ChangeMethod: user.ChangeValue } <esc>/ChangeNamespace\\|ChangePermission\\|ChangeModel\\|ChangeMethod\\|ChangeValue<enter>
    " Ruby Models Can Non-model based
    nnoremap <silent> ,rmcn acan [:ChangeNamespace_ChangeVerb], :ChangeObjects<esc>/ChangeNamespace\\|ChangeVerb\\|ChangeObjects<enter>
    " Ruby Models Belongs To association
    nnoremap <silent> ,rmbt abelongs_to :ChangeParentName, class_name: 'ChangeParentModel', inverse_of: :ChangeChildrenNameIfHasManyOrChildNameIfHasOne(Optional-OnlyIfRlationshipIsInBothModels), optional: true<esc>/ChangeParentName\\|ChangeParentModel\\|ChangeChildrenNameIfHasManyOrChildNameIfHasOne(Optional-OnlyIfRlationshipIsInBothModels)<return>
    " Ruby Models Has Many association
    nnoremap <silent> ,rmhm ahas_many :ChangeChildrenName, class_name: 'ChangeChildModel', inverse_of: :ChangeParentName(Optional-OnlyIfRlationshipIsInBothModels), dependent: :destroy<esc>/ChangeChildrenName\\|ChangeChildModel\\|ChangeParentName(Optional-OnlyIfRlationshipIsInBothModels)<return>
    " Ruby Models Has One association
    nnoremap <silent> ,rmho ahas_one :ChangeChildName, class_name: 'ChangeChildModel', inverse_of: :ChangeParentName(Optional-OnlyIfRlationshipIsInBothModels), dependent: :destroy<esc>/ChangeChildName\\|ChangeChildModel\\|ChangeParentName(Optional-OnlyIfRlationshipIsInBothModels)<return>
    " Ruby Models has Many Through association
    nnoremap <silent> ,rmmt ahas_many :ChangeChildrenName, through: :ChangeConnectingAssociationName, source: :ChangeChildrenName(ShouldMatchAssociationNameInConnectingModel), inverse_of: :ChangeTopParentModel(Optional-OnlyIfRlationshipIsInBothModels)<esc>/ChangeChildrenName(ShouldMatchAssociationNameInConnectingModel)\\|ChangeChildrenName\\|ChangeConnectingAssociationName\\|ChangeTopParentModel(Optional-OnlyIfRlationshipIsInBothModels)<return>
    " Ruby Models has One Through association
    nnoremap <silent> ,rmot ahas_one :ChangeChildOrParentName, through: :ChangeConnectingAssociationName, source: :ChangeChildOrParentName(ShouldMatchAssociationNameInConnectingModel), inverse_of: :ChangeBottomChildOrTopParentModel(Optional-OnlyIfRlationshipIsInBothModels), autosave: false<esc>/ChangeChildOrParentName(ShouldMatchAssociationNameInConnectingModel)\\|ChangeChildOrParentName\\|ChangeConnectingAssociationName\\|ChangeBottomChildOrTopParentModel(Optional-OnlyIfRlationshipIsInBothModels)<return>
    " Ruby Models accepts Nested attributes for has One
    nnoremap <silent> ,rmno aaccepts_nested_attributes_for :ChangeChildName, allow_destroy: true,  reject_if: proc \{ \|attributes\| attributes['ChangeAttribute'].blank? \}, update_only: true<esc>/ChangeChildName\\|ChangeAttribute<return>
    " Ruby Models accepts Nested attributes for has Many
    nnoremap <silent> ,rmnm aaccepts_nested_attributes_for :ChangeChildrenName, allow_destroy: true,  reject_if: proc \{ \|attributes\| attributes['ChangeAttribute'].blank? \}<esc>/ChangeChildrenName\\|ChangeAttribute<return>
    " Ruby Models has Rich Text
    nnoremap <silent> ,rmrt ahas_rich_text :ChangeAttribute<esc>/ChangeAttribute<return>
    " Ruby Models has One Attached
    nnoremap <silent> ,rmoa ahas_one_attached :ChangeAttribute<esc>/ChangeAttribute<return>
    " Ruby Models has Many Attached
    nnoremap <silent> ,rmma ahas_many_attached :ChangeAttributes<esc>/ChangeAttributes<return>
    " Ruby Models BAse
    nnoremap <silent> ,rmba :read ../templates/models/models/base.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Models Base Virtual
    nnoremap <silent> ,rmbv :read ../templates/models/models/base_virtual.rb<return>ggdd
    " Ruby Models VIrtual
    nnoremap <silent> ,rmvi :read ../templates/models/models/virtual.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Models CLass
    nnoremap <silent> ,rmcl :read ../templates/models/models/class.rb<return>ggdd/ChangeThisPls\\|change_args<return>
    " Ruby Models Sub Class
    nnoremap <silent> ,rmsu :read ../templates/models/models/sub_class.rb<return>ggdd/ChangeThisPls\\|change_args<return>
    " Ruby Models MOdule
    nnoremap <silent> ,rmmo :read ../templates/models/models/module.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Models SErvice
    nnoremap <silent> ,rmse :read ../templates/models/models/service.rb<return>ggdd/ChangeThisPls<return>

  " Ruby Routes
    " main routes
      " Ruby Routes NAmespace
      nnoremap <silent> ,rrna anamespace :ChangeThisPls do<return>end<esc>/ChangeThisPls<return>
      " Ruby Routes REsources
      nnoremap <silent> ,rrre aresources :ChangeThisPls, only %i[index show create update destroy]<esc>/ChangeThisPls<return>
      " Ruby Routes Resources Nested
      nnoremap <silent> ,rrrn aget ':id/ChangeThisPls', to: 'ChangeThisPls#index', as: :ChangeThisPls<esc>opost ':id/ChangeThisPls', to: 'ChangeThisPls#create'<esc>oresources :ChangeThisPls, only %i[show update destroy]<esc>/ChangeThisPls<return>
      " Ruby Routes Get Member
      nnoremap <silent> ,rrgm aget 'ChangeThisPls/:id/ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls_ChangeThisPls <esc>o# REMEMBER TO MAKE PARENT PLURAL ON INITIAL ARGUMENT AND "TO" BUT SINGULAR ON "AS"<esc>oExample: get 'users/:id/sub_profile', to: 'users#sub_profile', as: :user_subprofile<esc>oThis is because the helper method is pointing to a single user just like the show, edit, update and destroy actions<esc>ocore_user_subprofile_path is appropriate but core_users_subprofile_path is not<esc>/ChangeThisPls<return>
      " Ruby Routes GEt (for non-restful routes)
      nnoremap <silent> ,rrge aget 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
    " other routes
      "
      nnoremap <silent> ,rrsc ascope path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls do<return>end<esc>/ChangeThisPls<return>
      " Ruby Routes REsources full
      nnoremap <silent> ,rrrE aresources path: :ChangeThisPls, controller: :ChangeThisPls, as: :ChangeThisPls, only %i[index show create update destroy]<esc>/ChangeThisPls<return>

      nnoremap <silent> ,rrra aresources path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls, only %i[] do<return>end<esc>/ChangeThisPls<return>
      "
      nnoremap <silent> ,rrme amember do<return>end<esc>O <backspace><esc>
      " Ruby Routes GEt full (for non-restful routes)
      nnoremap <silent> ,rrgE aget 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
      "
      nnoremap <silent> ,rrgn aget ':id/ChangeThisPls', to: 'ChangeThisPls#index', as: :ChangeThisPls<esc>/ChangeThisPls<return>
      "
      nnoremap <silent> ,rrpo apost 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
      "
      nnoremap <silent> ,rrpO apost 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
      "
      nnoremap <silent> ,rrpn apost ':id/ChangeThisPls', to: 'ChangeThisPls#create'<esc>/ChangeThisPls<return>
      "
      nnoremap <silent> ,rrpa apatch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
      "
      nnoremap <silent> ,rrpA apatch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
      "
      nnoremap <silent> ,rrde adelete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
      "
      nnoremap <silent> ,rrdE adelete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>

  " Ruby Controller mappings
    " Ruby Controller Strong Params
    nnoremap <silent> ,rcsp adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttribute)<return>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttribute<return>
    " Ruby Controller Strong Params full
    nnoremap <silent> ,rcsP adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttribute,<return>ChangeArrayAttribute: [],<return>ChangeChildName: [:ChangeAttribute],<return>ChangeChildrenName: [ChangeChildName: [:ChangeAttribute]])<return>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttribute\\|ChangeArrayAttribute\\|ChangeChildrenName\\|ChangeChildName<return>
    " Ruby Controller Authorize Model based
    nnoremap <silent> ,rcam aauthorize!(:ChangeNamespace_ChangePermission, @ChangeModel)<esc>/ChangeNamespace\\|ChangePermission\\|ChangeModel<return>
    " Ruby Controller Authorize Non-model based
    nnoremap <silent> ,rcan aauthorize!(:ChangeNamespace_ChangeVerb, :ChangeObjects)<esc>/ChangeNamespace\\|ChangeVerb\\|ChangeObjects<return>
    " Ruby Controller Accessible By
    nnoremap <silent> ,rcab aChangeModel.accessible_by(current_ability, :ChangeNameSpace_ChangePermission)<esc>/ChangeModel\\|ChangeNameSpace\\|ChangePermission<enter>
    " Ruby Controller Accessible By full
    nnoremap <silent> ,rcaB a@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeNamespace_ChangePermission).search(params[:ChangeLoads_search]).index_scope)<esc>/ChangeLoads\\|ChangeModel\\|ChangeNameSpace\\|ChangePermission<enter>
    " Ruby Controller REnder
    nnoremap <silent> ,rcre arender 'ChangeTemplate'<esc>/ChangeTemplate<return>
    " Ruby Controller Redirect To
    nnoremap <silent> ,rcrt aredirect_to Change_url<esc>/Change_url<return>
    " Ruby Controller Model impersonator New
    nnoremap <silent> ,rcmn a@ChangeThisPls = ModelImpersonator.new<esc>/ChangeThisPls<return>
    " Ruby Controller Model impersonator set Value
    nnoremap <silent> ,rcmv a@ChangeThisPls.set_value(:ChangeAttribute, ChangeValue)<esc>/ChangeAttribute\\|ChangeValue<return>
    " Ruby Controller Model impersonator add Error Message
    nnoremap <silent> ,rcme a@ChangeThisPls.add_error_message(:ChangeAttribute, ChangeMessage)<esc>/ChangeAttribute\\|ChangeMessage<return>
    " Ruby Controllers BAse
    nnoremap <silent> ,rcba :read ../templates/controllers/base_controller.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Controllers Index Base
    nnoremap <silent> ,rcib :read ../templates/controllers/actions/index_base.rb<return>/ChangeLoads\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|ChangeVerb\\|ChangeObjects\\|DeleteThis<return>
    " Ruby Controllers Index Simple
    nnoremap <silent> ,rcis :read ../templates/controllers/actions/index_simple.rb<return>/ChangeLoads\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|ChangeVerb\\|ChangeObjects\\|DeleteThis<return>
    " Ruby Controllers Show Base
    nnoremap <silent> ,rcsb :read ../templates/controllers/actions/show_base.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|DeleteThis<return>
    " Ruby Controllers Show Tab Router
    nnoremap <silent> ,rcsr :read ../templates/controllers/actions/show_router.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|ChangeUrl\\|DeleteThis<return>
    " Ruby Controllers Show for Tab
    nnoremap <silent> ,rcst :read ../templates/controllers/actions/show_tab.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|ChangeTab\\|DeleteThis<return>
    " Ruby Controllers New Base
    nmap <silent> ,rcnb ,rcsb/show<return>cgnnew<esc>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|DeleteThis<return>
    " Ruby Controllers Create Base
    nnoremap <silent> ,rccb :read ../templates/controllers/actions/create_base.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeAttributes\\|DeleteThis\\|ChangeNamespace\\|ChangePermission\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>
    " Ruby Controllers Edit Base
    nmap <silent> ,rceb ,rcsb/show<return>cgnedit<esc>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|DeleteThis<return>
    " Ruby Controllers Update Base
    nnoremap <silent> ,rcub :read ../templates/controllers/actions/update_base.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|DeleteThis\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>
    " Ruby Controllers Destroy Base
    nnoremap <silent> ,rcdb :read ../templates/controllers/actions/destroy_base.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
    " Ruby Controllers FLash
    nnoremap <silent> ,rcfl aflash[:ChangeFlashType] = ChangeMessage<esc>/ChangeFlashType\\|ChangeMessage<return>
    " Ruby Controllers Flash Success
    nnoremap <silent> ,rcfs aflash[:success] = ChangeMessage<esc>/ChangeMessage<return>
    " Ruby Controllers Flash Info
    nnoremap <silent> ,rcfi aflash[:info] = ChangeMessage<esc>/ChangeMessage<return>
    " Ruby Controllers Flash Danger
    nnoremap <silent> ,rcfd aflash[:danger] = ChangeMessage<esc>/ChangeMessage<return>
    " Ruby Controllers Flash Danger
    nnoremap <silent> ,rcfD aflash[:danger] = "ChangeMessage because of the following errors: #{ChangeObject.errors.map { \|error\| error.type[0].capitalize + error.type[1..] }.join('; ')}."<esc>/ChangeMessage\\|ChangeObject<return>

  " Ruby Helpers
    " Ruby Helpers BAse
    nnoremap <silent> ,rhba :read ../templates/helpers/base_helper.rb<return>ggdd/ChangeThisPls<return>
  "
" javascript mappings
  " Javascript jQuery
    " Javascript jQiery Select Element
    nnoremap <silent> ,jqse a$(ChangeElement)<esc>/ChangeElement<return>
    " Javascript jQiery Select Class
    nnoremap <silent> ,jqsc a$('.ChangeClass')<esc>/ChangeClass<return>
    " Javascript jQiery Select Id
    nnoremap <silent> ,jqsi a$('#ChangeId')<esc>/ChangeId<return>
    " Javascript jQiery Select Attribute
    nnoremap <silent> ,jqsa a$('[ChangeAttribute]')<esc>/ChangeAttribute\\|ChangeValue<return>
    " Javascript jQiery Select Data attribute
    nnoremap <silent> ,jqsd a$('[data-ChangeAttribute]')<esc>/ChangeAttribute<return>
    " Javascript jQiery Select attribute contains *
    nnoremap <silent> ,jqs* a$("[ChangeAttribute*='ChangeString']")<esc>/ChangeAttribute\\|ChangeString<return>
    " Javascript jQiery Select attribute Value
    nnoremap <silent> ,jqsv a$("[ChangeAttribute='ChangeValue']")<esc>/ChangeAttribute\\|ChangeValue<return>
    " Javascript jQiery Document On
    nnoremap <silent> ,jqdo a$(document).on('ChangeEvents', 'ChangeSelectors', {}, function(event){})<esc>hi<return><esc>/ChangeEvents\\|ChangeSelectors<return>
    " Javascript jQiery Element On
    nnoremap <silent> ,jqeo a$(ChangeThisPls).on('ChangeThisPls', function(){})<esc>hi<return><esc>/ChangeThisPls<return>
    " Javascript jQiery Document Ready
    nnoremap <silent> ,jqdr a$(document).ready(ChangeThisPlsSetUp())<return>$(document).on('ajax:complete', ChangeThisPlsSetUp())<return>// Make sure to include logic after ajax and also make sure to prevent duplicate events<return><backspace><backspace><backspace>function ChangeThisPlsSetUp() {<return>ChangeThisPls<return>}<esc>/ChangeThisPls<return>
    " Javascript jQiery Document Ready (full)
    nnoremap <silent> ,jqdR a$(document).ready(function(){<return>ChangeThisPlsSetUp()<return>})<return>$(document).on('ajax:complete', function(){<return>ChangeThisPlsSetUp()<return>})<return>// Make sure to include logic after ajax and also make sure to prevent duplicate events<return><backspace><backspace><backspace>function ChangeThisPlsSetUp(){<return>ChangeThisPls<return>}<esc>/ChangeThisPls<return>
    " Javascript jQiery html
    nnoremap <silent> ,jqht ahtml("ChangeHtml")<esc>/ChangeHtml<return>
    " Javascript jQiery html (full)
    nmap <silent> ,jqhT a$('#ChangeId').html("<%= escape_javascript(render(partial: 'ChangePath', locals: { ChangeLocals })) %>")<esc>/ChangeId\\|ChangePath\\|ChangeLocals<return><n
    " Javascript jQiery EAch
    nmap <silent> ,jqea aeach(function(index){<return>})<esc>,O

  " Javascript Vanilla
    " Javascript Vanilla IF
    nnoremap <silent> ,jvif aif (ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
    " Javascript Vanilla IF inline
    nnoremap <silent> ,jviF aif (ChangeThisPls) ChangeThisPls<esc>/ChangeThisPls<return>
    " Javascript Vanilla If Else
    nnoremap <silent> ,jvie aif (ChangeThisPls) {<return>} else {<return>}<esc>/ChangeThisPls<return>
    " Javascript Vanilla If Else if else
    nnoremap <silent> ,jviE aif (ChangeThisPls) {<return>} else if (ChangeThisPls) {<return>} else {<return>}<esc>/ChangeThisPls<return>
    " Javascript Vanilla TErnary
    nnoremap <silent> ,jvte aChangeBoolean ? ChangeTrueResult : ChangeFalseResult<esc>/ChangeBoolean\\|ChangeTrueResult\\|ChangeFalseResult<return>
    " Javascrip Vanilla FOr
    nnoremap <silent> ,jvfo afor (ChangeThisPls of ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
    " Javascript Vanilla FUnction
    nnoremap <silent> ,jvfu afunction ChangeThisPls(){<return>}<esc>/ChangeThisPls<return>
    " Javascript Vanilla Get Attribute
    nnoremap <silent> ,jvga agetAttribute('ChangeAttribute')<esc>/ChangeAttribute<return>
    " Javascript Vanilla Add Attribute
    nnoremap <silent> ,jvaa aaddAttribute('ChangeAttribute')<esc>/ChangeAttribute<return>
    " Javascript Vanilla Remove Attribute
    nnoremap <silent> ,jvra aremoveAttribute('ChangeAttribute')<esc>/ChangeAttribute<return>
    " Javascript Vanilla Set Attribute
    nnoremap <silent> ,jvsa asetAttribute('ChangeAttribute', 'ChangeValue')<esc>/ChangeAttribute\\|ChangeValue<return>
    " Javascript Vanilla STyle
    nnoremap <silent> ,jvst astyle.ChangeProperty = ChangeValue<esc>/ChangeProperty\\|ChangeValue<return>
    " Javascript Vanilla Class list Contains
    nnoremap <silent> ,jvcc aclassList.contains('ChangeClass')<esc>/ChangeClass<return>
    " Javascript Vanilla Class list Add
    nnoremap <silent> ,jvca aclassList.add('FirstClassToAdd')<esc>/FirstClassToAdd<return>
    " Javascript Vanilla Class list Remove
    nnoremap <silent> ,jvcr aclassList.remove('FirstClassToRemove')<esc>/FirstClassToRemove<return>
    " Javascript Vanilla Class list Toggle
    nnoremap <silent> ,jvct aclassList.toggle('ChangeClass')<esc>/ChangeClass<return>
    " Javascript Vanilla Console Log
    nnoremap <silent> ,jvcl aconsole.log(ChangeThisPls)<esc>/ChangeThisPls<return>
    " Javascript Vanilla ALert
    nnoremap <silent> ,jval aalert(ChangeThisPls)<esc>/ChangeThisPls<return>
    " Javascript Vanilla Dispatch Event
    nnoremap <silent> ,jvde adocument.dispatchEvent(new Event('ChangeEvent'));<esc>/ChangeEvent<return>
    " Javascript Vanilla Inner Html
    nnoremap <silent> ,jvih ainnerHTML = "ChangeHTML"<esc>/ChangeHTML<return>
    " Javascript Vanilla Inner Html (full)
    nnoremap <silent> ,jviH ainnerHTML = "<%= escape_javascript(render(partial: 'ChangePath', locals: { ChangeLocals })) %>"<esc>/ChangePath\\|ChangeLocals<return>
    " Javascript Vanilla Append Html
    nnoremap <silent> ,jvah ainnerHTML += "ChangeHTML"<esc>/ChangeHTML<return>
    " Javascript Vanilla Prepend Html
    nnoremap <silent> ,jvph ainnerHTML = "ChangeHTML" + ChangeElement.innerHTML<esc>/ChangeHTML\\|ChangeElement<return>
    " Javascript Vanilla Get Computed style
    nnoremap <silent> ,jvgc agetComputedStyle(ChangeElement, null).ChangeStyle<esc>/ChangeElement\\|ChangeStyle<return>

  " Javascript Ajax
    " Javascript Ajax BAse
    nnoremap <silent> ,jaba :read ../templates/javascript/ajax/base.js.erb<return>ggdd/DeleteThis<return>
    " Javascript Ajax SUccess
    nnoremap <silent> ,jasu :read ../templates/javascript/ajax/success.js.erb<return>/ChangeThisPls\\|CopyIdFromView\\|CopyPathFromView\\|ChangeLocals\\|DeleteThis<return>
    " Javascript Ajax Invalid Create
    nnoremap <silent> ,jaic :read ../templates/javascript/ajax/invalid_create.js.erb<return>/ChangeSesId\\|CopyPathFromView\\|ChangeObject\\|block\\|DeleteThisPls\\|ChangeModel<return>
    " Javascript Ajax Invalid Update
    nnoremap <silent> ,jaiu :read ../templates/javascript/ajax/invalid_update.js.erb<return>/ChangeSesId\\|CopyPathFromView\\|ChangeObject\\|block\\|DeleteThisPls<return>


" Stylesheet mappings
  " Stylesheet Base
    " Stylesheet Base Icon Options
    nnoremap <silent> ,sbio amdi-edit mdi-delete mdi-more mdi-plus-circle-o mdi-check mdi-info-outline mdi-alert-triangle mdi-close-circle-o
    " Stylesheet Base Text Colors
    nnoremap <silent> ,sbtc atext-primary text-secondary text-danger text-warning text-warning-2



" Tests
  " Base
    " Tests Base TEst
    nnoremap <silent> ,tbte atest 'Should ChangeThisPls when ChangeThisPls' do<return>end<esc>/ChangeThisPls<return>
    " Tests Base Assertions and Tools
    nnoremap <silent> ,tbat :read ../templates/tests/assertions_and_tools.rb<return>
    " Tests Base Fixture File upload
    nnoremap <silent> ,tbff :read ../templates/tests/misc/fixture_file_upload.rb<return><esc>/ChangeVariable\\|ChangeFileNameExtension\\|ChangeFileName\\|ChangeFileType\\|ChangeFileSubType\\|DeleteThisPls\\|ChangeInstance\\|ChangeAttachment<return>
  " Controller
    " Tests Controller BAse
    nnoremap <silent> ,tcba :read ../templates/tests/controller_base.rb<return>ggdd/ChangePathAndFileName\\|ChangeThisPls\\|ChangeUserWithPermission\\|ChangeUserWithPermission\\|change_model_name\\|ChangeModel\\|DeleteThisIfNotNecessary<return>
    " Tests Controller Base Scenarios
    nnoremap <silent> ,tcbs :read ../templates/tests/controller_base_scenarios.rb<return>/ChangePermission\\|ChangeMethodUrlAndParams\\|ReplaceThisPls<return>
    " Tests Controller Base Test
    nnoremap <silent> ,tcbt :read ../templates/tests/controller_base_test.rb<return>/ChangeThisPls\\|ChangeUserWithPermission\\|ChangeMethodUrlAndParams\\|DeleteThisPls\\|ChangeTemplate\\|ChangePath<return>
    " Tests Controller REquest
    nnoremap <silent> ,tcre  aChangeHtmlMethod ChangeUrlHelper_path<esc>/ChangeHtmlMethod\\|ChangeUrlHelper<return>
    " Tests Controller REquest full
    nnoremap <silent> ,tcrE  aChangeHtmlMethod ChangeUrlHelper_path, params: { ChangeParams }, headers{ ChangeHeaders }, env: ChangeEnvironment, xhr: true, as: :json<esc>/ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeParams\\|ChangeHeaders\\|ChangeEnvironment\\|:json<return>
    " Tests Controller GEt (index)
    nnoremap <silent> ,tcge aget ChangeUrlHelper_path<esc>/ChangeUrlHelper<return>
    " Tests Controller GEt full (show or new or edit)
    nnoremap <silent> ,tcgE aget ChangeUrlHelper_path(ChangeModel)<esc>/ChangeUrlHelper\\|ChangeModel<return>
    " Tests Controller POst
    nnoremap <silent> ,tcpo apost ChangeUrlHelper_path, params: { ChangeParams }<esc>/ChangeUrlHelper\\|ChangeParams<return>
    " Tests Controller PAtch
    nnoremap <silent> ,tcpa apatch ChangeUrlHelper_path(ChangeModel), params: { ChangeParams }<esc>/ChangeUrlHelper\\|ChangeModel\\|ChangeParams<return>
    " Tests Controller DElete
    nnoremap <silent> ,tcde adelete ChangeUrlHelper_path(ChangeModel)<esc>/ChangeUrlHelper\\|ChangeModel<return>
  " Models
    " Tests Model BAse
    nnoremap <silent> ,tmba :read ../templates/tests/model_base.rb<return>ggdd/ChangePathAndFileName\\|ChangeThisPls\\|ChangePermission\\|ChangeUserWithPermission\\|change_model_name\\|ChangeModel<return>
    " Tests Models Belongs To
    nnoremap <silent> ,tmbt atest "ChangeModel should belong to ChangeAssociationName" do<return>assert_equal @ChangeParent, @ChangeModel.ChangeParent<return>end<esc>/ChangeModel\\|ChangeAssociationName\\|ChangeParent<return>
    " Tests Models Has Many
    nnoremap <silent> ,tmhm atest "ChangeModel should have many ChangeAssociationName" do<return>assert_equal @ChangeModel.ChangeAssociationName.count, ChangeModel.where(ChangeModel_id: ChangeModel.id).count<return>end<esc>/ChangeModel\\|ChangeAssociationName<return>
    " Tests Models Model VAlication
    nnoremap <silent> ,tmva atest "ChangeModel ChangeAttribute should be ChangeValidation" do<return>@ChangeModel.attrbitute = ChangeInvalidValue<return>assert_not @ChangeModel.valid?<return>end<esc>/ChangeModel\\|ChangeAttribute\\|ChangeValidation\\|ChangeInvalidValue<return>
  " Integration
    " Tests Integration BAse
    nnoremap <silent> ,tiba :read ../templates/tests/integration_base.rb<return>ggdd/ChangePathAndFileName\\|ChangeThisPls\\|ChangePermission\\|DeleteThisIfNotNecessary<return>

" Packages
  " Sortable Table positions
    " Controller
    nnoremap <silent> ,pstc :read ../templates/packages/sortable_table_positions/controller.rb<return>/ChangeParentModel\\|ChangeParent\\|ChangeAuth\\|DeleteThis\\|ChangeChildren\\|ChangeChild\\|ChangeStpId<return>
    " View
    nnoremap <silent> ,pstv :read ../templates/packages/sortable_table_positions/view.html.erb<return>/ChangeStpId\\|ChangePath\\|ChangeStpIdForm\\|ChangeParent\\|ChangeChildren\\|ChangeChild\\|DeleteThis\\|ChangeFinalHiddenRowHeight<return>
