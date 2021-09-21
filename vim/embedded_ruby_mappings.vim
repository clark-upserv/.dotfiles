function! NoHrefComment()
   execute "normal! a<%# DeleteThis - if styling like link, keep \"no-href-link\" class %>\<return><%# DeleteThis - if styling like icon, keep \"no-href-icon\", add standard icon classes and make nil %>\<return><%# DeleteThis - if styling like button, remove both classes above and add standard button classes %>"
endfunction
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
nnoremap <silent> ,erlt a<%= link_to(ChangeDisplay, ChangePath_path) %><esc>/ChangeDisplay\\|ChangePath<return>
" Embedded Ruby Link to with Class
nnoremap <silent> ,erlc a<%= link_to(ChangeDisplay, ChangePath_path, class: 'ChangeClass') %><esc>/ChangeDisplay\\|ChangePath\\|ChangeClass<return>
" Embedded Ruby Link to Icon (classes only)
nnoremap <silent> ,erli aicon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon<esc>/ChangeColor\\|ChangeIcon<return>
" Embedded Ruby Link to Icon (full)
nnoremap <silent> ,erlI a<%= link_to('', ChangePath_path, class: 'icon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon') %><esc>/ChangePath\\|ChangeColor\\|ChangeIcon<return>
" Embedded Ruby Link to Button (classes only)
nnoremap <silent> ,erlb abtn btn-ChangeColor<esc>/ChangeColor<return>
" Embedded Ruby Link to Button (full)
nnoremap <silent> ,erlB a<%= link_to(ChangeDisplay, ChangePath_path, class: 'btn btn-ChangeColor') %><esc>/ChangeDisplay\\|ChangePath\\|ChangeColor<return>
" Embedded Ruby Link to Ajax
nnoremap <silent> ,erla a<%= link_to(ChangeDisplay, ChangePath_path, method: :ChangeMethod, remote: true) %><esc>/ChangeDisplay\\|ChangePath\\|ChangeMethod<return>
" Embedded Ruby Link to No href
nnoremap <silent> ,erln a<%= content_tag('A', ChangeDisplay, class: "no-href-link no-href-icon") %><return><esc>:call NoHrefComment()<return>/ChangeDisplay\\|no-href-link\\|no-href-icon\\|DeleteThis<return>
" Embedded Ruby Link to Modal
nnoremap <silent> ,erlm a<%= content_tag('A', ChangeDisplay, class: 'no-href-link no-href-icon', data: { toggle: 'modal', target: '#ChangeModalId_modal' }) %><return><esc>:call NoHrefComment()<return>o<div id="ChangeModalId_modal" class="modal fade" tabindex="-1" role="dialog"><return><%= render('ChangePath/ChangeModal_modal') %><return></div><esc>/ChangeDisplay\\|ChangeColor\\|no-href-link\\|no-href-icon\\|DeleteThis\\|ChangeModalId\\|ChangeErbIfNecessary\\|ChangePath\\|ChangeModal<return>
" Embedded Ruby Link to Remote (attributes only)
nnoremap <silent> ,erlr a remote: true, method: :ChangeMethod,<esc>/ChangeMethod<return>
" Embedded Ruby Link to Remote (full)
nnoremap <silent> ,erlR a<%= link_to(ChangeDisplay, ChangePath_path, remote: true, method: :ChangeMethod) %><esc>/ChangeDisplay\\|ChangePath\\|ChangeMethod<return>
" Embedded Ruby Link to Dropdown Item
nnoremap <silent> ,erld a<%= link_to(ChangeDisplay, ChangePath_path, class: 'dropdown-item') %><esc>/ChangeDisplay\\|ChangePath<return>
" Html Elements DropDown (full)
nnoremap <silent> ,erlD a<<delete>%# DeleteThis - see bootstrap docs for customizing dropdown %><return><div class="dropdown"><return><%= content_tag(<return>  'A',<return>ChangeDisplay,<return>id: 'ChangeId',<return>class: "no-href-link no-href-icon dropdown-toggle",<return>data: { toggle: 'dropdown' },<return>aria: { haspopup: 'true', expanded: 'false' }) %><return><esc>:call NoHrefComment()<return>o<div class="dropdown-menu" aria-labelledby="ChangeId"><return><%= link_to(ChangeDisplay, ChangePath_path, class: 'dropdown-item') %><return></div><return></div><esc>/ChangeDisplay\\|ChangeId\\|no-href-link\\|no-href-icon\\|DeleteThis\\|ChangePath<return>
" Embedded Ruby Image Tag
nnoremap <silent> ,erit a<%= image_tag(ChangeThisPls, alt: 'ChangeThisPls', width: 'ChangeThisPls', height: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
" Embedded Ruby Javascript Tag
nnoremap <silent> ,erjt a<%= javascript_include_tag('ChangePath') %><esc>/ChangePath<return>
" Embedded Ruby StyleSheet
nnoremap <silent> ,erss a<%= stylesheet_link_tag('ChangeThisPls') %><esc>/ChangeThisPls<return>
" Embedded Ruby PArtial
nnoremap <silent> ,erpa a<%= render('ChangePath', ChangeLocals) %><esc>/ChangePath\\|ChangeLocals<return>
" Embedded Ruby PArtial (full)
nnoremap <silent> ,erpA a<div id="ChangeId_container"><return><%= render('ChangePath', ChangeLocals) %><return></div><esc>/ChangeId\\|ChangePath\\|ChangeLocals<return>
" Embedded Ruby Partials for Show edit swap
nmap <silent> ,erps ,vsba
" Embedded Ruby Puts Debugger
nnoremap <silent> ,erpd a<% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts nil %><return><% puts 'ChangeLabel:' %><return><% puts ChangeThisPls %><esc>/ChangeLabel\\|ChangeThisPls<return>
" Html Ruby Escape Javascript with partial
nnoremap <silent> ,erej a<%= escape_javascript(render(ChangeRender)) %><esc>/ChangeRender<return>

