function! NoHrefComment()
   execute "normal! a<%# DeleteThis - if styling like link, keep \"no-href-link\" class %>\<return><%# DeleteThis - if styling like icon, keep \"no-href-icon\", add standard icon classes and make display nil %>\<return><%# DeleteThis - if styling like button, remove both classes above and add standard button classes %>"
endfunction
" Embedded Ruby ERb
nnoremap <silent> ,hrer a<%  %><esc>hhh
" Embedded Ruby Erb Entered
nnoremap <silent> ,hree a<%=  %><esc>hhh
" Embedded Ruby Erb # comment
nnoremap <silent> ,hre# a<%#  %><esc>hhi
" Embedded Ruby IF
nnoremap <silent> ,hrif a<% if ChangeThisPls %><esc>o<% end %><esc>/ChangeThisPls<return>
" Embedded Ruby IF inline
nnoremap <silent> ,hriF a<% ChangeThisPls if ChangeThisPls %><esc>/ChangeThisPls<return>
" Embedded Ruby If Else
nnoremap <silent> ,hrie a<% if ChangeThisPls %><esc>o<% else %><esc>o<% end %><esc>/ChangeThisPls<return>
" Embedded Ruby If Else else
nnoremap <silent> ,hriE a<% if ChangeThisPls %><esc>o<% elsif ChangeThisPls %><esc>o<% else %><esc>o<% end %><esc>/ChangeThisPls<return>
" Embedded Ruby UNless
nnoremap <silent> ,hrun a<% unless ChangeThisPls %><return><% end %><esc>/ChangeThisPls<return>
" Embedded Ruby UNless inline
nnoremap <silent> ,hruN a<% ChangeThisPls unless ChangeThisPls %><esc>/ChangeThisPls<return>
" Embedded Ruby CAse
nnoremap <silent> ,hrca a<% case ChangeThisPls %><return><% when ChangeThisPls %><return><% else %><return><% end %><esc>/ChangeThisPls<return>
" Embedded Ruby EAch
nnoremap <silent> ,hrea a<% ChangeThisPls.each do \|ChangeThisPls\| %><return><% end %><esc>/ChangeThisPls<return>
" Embedded Ruby Each With index
nnoremap <silent> ,hrew a<% ChangeThisPls.each_with_index do <bar>ChangeThisPls, index<bar> do %><return><% end %><esc>/ChangeThisPls<return>
" Embedded Ruby Ordere dList
nnoremap <silent> ,hrol a<ol><return><% ChangeThisPls.each do \|ChangeThisPls\| %><return><li>ChangeThisPls</li><return><% end %><return></ol><esc>/ChangeThisPls<return>
" Embedded Ruby Unordered List
nnoremap <silent> ,hrul a<ul><return><% ChangeThisPls.each do \|ChangeThisPls\| %><return><li>ChangeThisPls</li><return><% end %><return></ul><esc>/ChangeThisPls<return>
" Embedded Ruby ENd
nnoremap <silent> ,hren a<% end %><esc>
" Embedded Ruby Link To
nnoremap <silent> ,hrlt a<%= link_to(ChangeDisplay, ChangePath_path) %><esc>/ChangeDisplay\\|ChangePath<return>
" Embedded Ruby Link to with Class
nnoremap <silent> ,hrlc a<%= link_to(ChangeDisplay, ChangePath_path, class: 'ChangeClass') %><esc>/ChangeDisplay\\|ChangePath\\|ChangeClass<return>
" Embedded Ruby Link to Icon (classes only)
nnoremap <silent> ,hrli aicon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon<esc>/ChangeColor\\|ChangeIcon<return>
" Embedded Ruby Link to Icon (full)
nnoremap <silent> ,hrlI a<%= link_to('', ChangePath_path, class: 'icon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon') %><esc>/ChangePath\\|ChangeColor\\|ChangeIcon<return>
" Embedded Ruby Link to Button (classes only)
nnoremap <silent> ,hrlb abtn btn-ChangeColor<esc>/ChangeColor<return>
" Embedded Ruby Link to Button (full)
nnoremap <silent> ,hrlB a<%= link_to(ChangeDisplay, ChangePath_path, class: 'btn btn-ChangeColor') %><esc>/ChangeDisplay\\|ChangePath\\|ChangeColor<return>
" Embedded Ruby Link to Ajax
nnoremap <silent> ,hrla a<%= link_to(ChangeDisplay, ChangePath_path, method: :ChangeMethod, remote: true) %><esc>/ChangeDisplay\\|ChangePath\\|ChangeMethod<return>
" Embedded Ruby Link to No href
nnoremap <silent> ,hrln a<%= content_tag('A', ChangeDisplay, class: "no-href-link no-href-icon") %><return><esc>:call NoHrefComment()<return>/ChangeDisplay\\|no-href-link\\|no-href-icon\\|DeleteThis<return>
" Embedded Ruby Link to Modal
nnoremap <silent> ,hrlm a<%= content_tag('A', ChangeDisplay, class: 'no-href-link no-href-icon', data: { toggle: 'modal', target: '#ChangeModalId_modal' }) %><return><esc>:call NoHrefComment()<return>o<div id="ChangeModalId_modal" class="modal fade" tabindex="-1" role="dialog"><return><%= render('ChangePath/ChangeTemplate_ChangeModal_modal') %><return></div><esc>/ChangeDisplay\\|ChangeColor\\|no-href-link\\|no-href-icon\\|DeleteThis\\|ChangeModalId\\|ChangeErbIfNecessary\\|ChangePath\\|ChangeTemplate\\|ChangeModal<return>
" Embedded Ruby Link to Remote (attributes only)
nnoremap <silent> ,hrlr a remote: true, method: :ChangeMethod,<esc>/ChangeMethod<return>
" Embedded Ruby Link to Remote (full)
nnoremap <silent> ,hrlR a<%= link_to(ChangeDisplay, ChangePath_path, remote: true, method: :ChangeMethod) %><esc>/ChangeDisplay\\|ChangePath\\|ChangeMethod<return>
" Embedded Ruby Link to Dropdown Item
nnoremap <silent> ,hrld a<%= link_to(ChangeDisplay, ChangePath_path, class: 'dropdown-item') %><esc>/ChangeDisplay\\|ChangePath<return>
" Html Elements DropDown (full)
nnoremap <silent> ,hrlD a<<delete>%# DeleteThis - see bootstrap docs for customizing dropdown %><return><div class="dropdown"><return><%= content_tag(<return>  'A',<return>ChangeDisplay,<return>id: 'ChangeId',<return>class: "no-href-link no-href-icon dropdown-toggle",<return>data: { toggle: 'dropdown' },<return>aria: { haspopup: 'true', expanded: 'false' }) %><return><esc>:call NoHrefComment()<return>o<div class="dropdown-menu" aria-labelledby="ChangeId"><return><%= link_to(ChangeDisplay, ChangePath_path, class: 'dropdown-item') %><return></div><return></div><esc>/ChangeDisplay\\|ChangeId\\|no-href-link\\|no-href-icon\\|DeleteThis\\|ChangePath<return>
" Embedded Ruby Image Tag
nnoremap <silent> ,hrit a<%= image_tag(ChangeThisPls, alt: 'ChangeThisPls', width: 'ChangeThisPls', height: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
" Embedded Ruby Javascript Tag
nnoremap <silent> ,hrjt a<%= javascript_include_tag('ChangePath') %><esc>/ChangePath<return>
" Embedded Ruby StyleSheet
nnoremap <silent> ,hrss a<%= stylesheet_link_tag('ChangeThisPls') %><esc>/ChangeThisPls<return>
" Embedded Ruby PArtial
nnoremap <silent> ,hrpa a<%= render('ChangePath/ChangeTemplate_ChangePartial') %><esc>/ChangePath\\|ChangeTemplate\\|ChangePartial<return>
" Embedded Ruby PArtial (full)
nnoremap <silent> ,hrpA a<div id="ChangePartial_container"><return><%= render('ChangePath/ChangeTemplate_ChangePartial') %><return></div><esc>/ChangePartial\\|ChangePath\\|ChangeTemplate<return>
" Embedded Ruby Partials for Show edit swap
nmap <silent> ,hrps ,vsba
" Embedded Ruby Puts Debugger
nnoremap <silent> ,hrpd a<% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts nil %><return><% puts 'ChangeLabel:' %><return><% puts ChangeThisPls %><esc>/ChangeLabel\\|ChangeThisPls<return>
