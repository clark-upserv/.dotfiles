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
"     Html Inputs
"     Html Show elements
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
"   Database
"     Seeds
"
"
augroup CustomVimEntry
  autocmd!
  autocmd VimEnter * :only
  autocmd VimEnter * :vsp
  autocmd VimEnter * :ter
  autocmd VimEnter * :close
  " even though this is sourced in vimrc, it needs to be called again form
  " some of the simple mappings to work...???
  autocmd VimEnter * :so ~/.dotfiles/vim/manifest.vim
augroup END
so ~/.dotfiles/vim/simple_mappings.vim
so ~/.dotfiles/vim/file_navigation_mappings.vim
so ~/.dotfiles/vim/view_mappings.vim
so ~/.dotfiles/vim/embedded_ruby_mappings.vim
so ~/.dotfiles/vim/test_mappings.vim
so ~/.dotfiles/vim/file_management_mappings.vim
so ~/.dotfiles/vim/buffer_management_mappings.vim
so ~/.dotfiles/vim/window_management_mappings.vim
so ~/.dotfiles/vim/ruby_mappings.vim
so ~/.dotfiles/vim/html_mappings.vim


" truly random one off stuff
  " Caps lock in insert mode (press ctrl - ^ to toggle)
    " Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
    for c in range(char2nr('A'), char2nr('Z'))
      execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
      execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
    endfor
    " Kill the capslock when leaving insert mode.
    autocmd InsertLeave * set iminsert=0

" Misc. mapping / messages
  " Misc. Reload Source
  nnoremap <silent> ,mrs :so ~/.dotfiles/vim/manifest.vim<return>
  " Misc. DD but combine to previous line instead of delete line  (I<tab>
  " makes sure there is at least something on the line because viwx on empty
  " line deletes entire line and then grabs following line)
  nmap <silent> ,mdd I<tab><esc>0viwxi<backspace><esc><right>
  " Misc. Dd but combine to Forward line instead of delete line
  nmap <silent> ,mdf $<down>,mdd
  nmap <silent> ,mde $<down>,mddi<lt>return><esc>
  " temp for whatever
  nnoremap <silent> ,mss a<lt>backspace><lt>backspace><lt>backspace>

  " Misc. Messages
  nnoremap <silent> ,mminsert_input a<%# DeleteThis - insert HTML Input %><esc>/DeleteThis<return>
  nnoremap <silent> ,mmno_href_comment a<%# DeleteThis - if styling like link, keep "no-href-link" class %><return><%# DeleteThis - if styling like icon, keep "no-href-icon", add standard icon classes and make nil %><return><%# DeleteThis - if styling like button, remove both classes above and add standard button classes %>
  nnoremap <silent> ,mmdir_notes a# DeleteThisNote: ** searches all subfolders; *.ChangeExtension searches all file names wit that extension; the final * makes sure to include erb files<return><backspace><backspace><esc>

" javascript mappings
  " Javascript jQuery
    " Javascript jQiery Select Element
    nnoremap <silent> ,jqse a$('ChangeElement')<esc>/ChangeElement<return>
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
    nnoremap <silent> ,jqdr a$(document).ready(function(){ChangeThisPlsSetUp()})<return>$(document).on('ajax:complete', function(){ChangeThisPlsSetUp()})<return>// Make sure to include logic after ajax and also make sure to prevent duplicate events<return><esc>0Cfunction ChangeThisPlsSetUp() {<return>// DeleteThis - do not use $(document).on() because event listeners will not be removed on ajax and could cause duplicates. Instead use $(element).on()<return><esc>0C}<esc>/ChangeThisPls\\|DeleteThis<return>
    " Javascript jQiery Document Ready (full)
    nnoremap <silent> ,jqdR a$(document).ready(function(){<return>ChangeThisPlsSetUp()<return>})<return>$(document).on('ajax:complete', function(){<return>ChangeThisPlsSetUp()<return>})<return>// Make sure to include logic after ajax and also make sure to prevent duplicate events<return><esc>0Cfunction ChangeThisPlsSetUp(){<return>// DeleteThis - do not use $(document).on() because event listeners will not be removed on ajax and could cause duplicates. Instead use $(element).on()<return><esc>0C}<esc>/ChangeThisPls\\|DeleteThis<return>
    " Javascript jQiery html
    nnoremap <silent> ,jqht ahtml("ChangeHtml")<esc>/ChangeHtml<return>
    " Javascript jQiery html (full)
    nmap <silent> ,jqhT ahtml("<%= escape_javascript(render(ChangeRender)) %>")<esc>/ChangeRender<return><n
    " Javascript jQiery EAch
    nmap <silent> ,jqea aeach(function(index){<return>})<esc>,,O

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
    nnoremap <silent> ,jviH ainnerHTML = "<%= escape_javascript(render(ChangeRender)) %>"<esc>/ChangeRender<return>
    " Javascript Vanilla Append Html
    nnoremap <silent> ,jvah ainnerHTML += "ChangeHTML"<esc>/ChangeHTML<return>
    " Javascript Vanilla Prepend Html
    nnoremap <silent> ,jvph ainnerHTML = "ChangeHTML" + ChangeElement.innerHTML<esc>/ChangeHTML\\|ChangeElement<return>
    " Javascript Vanilla Get Computed style
    nnoremap <silent> ,jvgc agetComputedStyle(ChangeElement, null).ChangeStyle<esc>/ChangeElement\\|ChangeStyle<return>
    " 
    nnoremap <silent> ,jvcd aconsole.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW1')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW2')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW3')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW4')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW5')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW6')<return>console.log(ChangeThis)<esc>/ChangeThis<return>
    " Javascript Vanilla Create Element
    nnoremap <silent> ,jvce a// DeleteThis - create element<return><esc>0Cvar div = document.createElement('CHANGEELEMENTTYPE')<return>div.id = 'ChangeId'<return>div.classList.add('ChangeClass')<return>div.innerHTML = "<%= escape_javascript(render(ChangeRender)) %>"<return><return>// DeleteThis - get parent if inserting at beginning or end of parent<return><esc>0Cvar parent = document.getElementById('ChangeId')<return>// DeleteThis - if inserting at beginning of parent<return><esc>0Cparent.prepend(div)<return>// DeleteThis - if inserting at end of parent<return><esc>0Cparent.append(div)<return><return>// DeleteThis - get sibling if inserting before or after sibling<return><esc>0Cvar sibling = document.getElementById('#ChangeSibling')<return>// DeleteThis - if inserting before sibling<return><esc>0Csibling.before(div)<return>// DeleteThis - if inserting after sibling<return><esc>0Csibling.after(div)<esc>/DeleteThis\\|CHANGEELEMENTTYPE\\|ChangeId\\|ChangeClass\\|ChangeRender\\|ChangeSibling<return>
  " Javascript Ajax
    " Javascript Ajax BAse
    nnoremap <silent> ,jaba :read ../templates/javascript/ajax/base.js.erb<return>ggdd/DeleteThis<return>
    " Javascript Ajax SUccess
    nnoremap <silent> ,jasu :read ../templates/javascript/ajax/success.js.erb<return>/ChangeThisPls\\|CopyIdFromView\\|ChangeRender\\|DeleteThis<return>
    " Javascript Ajax CReate
    nnoremap <silent> ,jacr :read ../templates/javascript/ajax/create.js.erb<return>/DeleteThis\\|CHANGEELEMENTTYPE\\|ChangeId\\|ChangeClass\\|ChangeRender\\|ChangeSibling\\|CopyIdFromView<return>
    " Javascript Ajax UPdate
    nmap <silent> ,jaup ,jasu
    " Javascript Ajax DEstroy
    nmap <silent> ,jade ,jasu
    " Javascript Ajax Invalid Create
    nnoremap <silent> ,jaic :read ../templates/javascript/ajax/invalid_create.js.erb<return>/ChangeSesId\\|ChangeRender\\|CopyPathFromView\\|ChangeObject\\|block\\|DeleteThisPls\\|ChangeModel<return>
    " Javascript Ajax Invalid Update
    nnoremap <silent> ,jaiu :read ../templates/javascript/ajax/invalid_update.js.erb<return>/ChangeSesId\\|ChangeRender\\|block\\|DeleteThisPls<return>
    " Javascript Ajax Invalid Destroy
    nmap <silent> ,jaid ,jasu
    " Javascript Ajax Window Location replace
    nnoremap <silent> ,jawl awindow.location.replace("<%= ChangeUrl %>")<esc>/ChangeUrl<return>
    " Javascript Ajax Errors
    nnoremap <silent> ,jaer a$('#ChangeId').html("<%= escape_javascript(render('shared/errors', object: @ChangeObject)) %>")<esc>/ChangeId\\|ChangeObject<return>
    " Javascript Ajax Errors
    nnoremap <silent> ,jaie a$('#ChangeId').html("<%= escape_javascript(render('shared/inline_errors', errors: ChangeObject.errors.messages[:ChangeAttribute])) %>")<esc>/ChangeId\\|ChangeObject\\|ChangeAttribute<return>


" Stylesheet mappings
  " Stylesheet Base
    " Stylesheet Base Text Colors
    nnoremap <silent> ,sbtc atext-primary text-secondary text-danger text-warning text-warning-2

" Packages
  " Sortable Table positions
    " Controller
    nnoremap <silent> ,pstc :read ../templates/packages/sortable_table_positions/controller.rb<return>/ChangeParentModel\\|ChangeParent\\|ChangeAuth\\|DeleteThis\\|ChangeChildren\\|ChangeChild\\|ChangeStpId<return>
    " View
    nnoremap <silent> ,pstv :read ../templates/packages/sortable_table_positions/view.html.erb<return>/ChangeStpId\\|ChangePath\\|ChangeStpIdForm\\|ChangeParent\\|ChangeChildren\\|ChangeChild\\|DeleteThis\\|ChangeFinalHiddenRowHeight<return>
    
" Database
  " Seeds
    " BAse
    nnoremap <silent> ,dsba a# frozen_string_literal: true<return><backspace><backspace><return>puts 'Loading ChangeName ChangeItems...'<return><return># Clear used values for all generators<return><backspace><backspace>Faker::UniqueGenerator.clear<return><return># Setup<return><backspace><backspace>account = Core::Account.first<return>dif_account = Core::Account.second<return>user = Core::User.first<return>dif_account_user = dif_account.users.first<return><return>puts 'ChangeName ChangeItems completed'<esc>/ChangeName\\|ChangeItems<return>
    
