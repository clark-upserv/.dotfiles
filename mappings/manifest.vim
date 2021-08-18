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

so ~/.dotfiles/mappings/simple_mappings.vim
so ~/.dotfiles/mappings/file_navigation_mappings.vim
so ~/.dotfiles/mappings/view_mappings.vim
so ~/.dotfiles/mappings/embedded_ruby_mappings.vim
so ~/.dotfiles/mappings/test_mappings.vim
so ~/.dotfiles/mappings/file_management_mappings.vim
so ~/.dotfiles/mappings/buffer_management_mappings.vim
so ~/.dotfiles/mappings/window_management_mappings.vim

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
  nnoremap <silent> ,mrs :so ~/.dotfiles/mappings/manifest.vim<return>
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
    nnoremap <silent> ,hesp a<span><return></span><esc><up>
    " Html Elements STrong
    nnoremap <silent> ,hest a<strong>ChangeThisPls</strong><esc>/ChangeThisPls<return>
    " Html Elements ICon
    nnoremap <silent> ,heic a<i class="icon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon"></i><esc>/px-3\\|fs-4\\|ChangeColor\\|ChangeIcon<return>
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

  " Html Show edit swap
    " Html Show edit swap ASets
    nnoremap <silent> ,hsas a<% add_javascript_packs('lib/show_edit_swap') %><return><return><%= content_for :stylesheets do %><return><%= stylesheet_link_tag('lib/show_edit_swap') %><return><% end %><return><esc>
    " Html Show edit swap BAse
    nnoremap <silent> ,hsba a<div id="ChangeSesId-ses-show"><return><%= render('ChangePartialPath/show', ChangeLocals) %><return></div><return><return><div id="ChangeSesId-ses-edit"><return><%= render('ChangePartialPath/edit', ChangeLocals) %><return></div><esc>/ChangeSesId\\|ChangePartialPath\\|ChangeLocals<return>
    " Html Show edit swap Base New
    nnoremap <silent> ,hsbn a<div id="ChangeSesId-ses-new-show"><return><%= render('ChangePartialPath/show_new', ChangeLocals) %><return></div><return><return><div id="ChangeSesId-new-ses-edit"><return><%= render('ChangePartialPath/edit_new', ChangeLocals) %><return></div><esc>/ChangeSesId\\|ChangePartialPath\\|ChangeLocals<return>
    " Html Show edit swap Edit button - Button
    nnoremap <silent> ,hseb a<a class="btn btn-primary ChangeSesId-ses-edit-button">ChangeDisplay</a><esc>/ChangeSesId\\|ChangeDisplay<return>
    " Html Show edit swap Edit button - Icon
    nnoremap <silent> ,hsei a<a class="no-href-icon px-3 fs-4 text-primary mdi mdi-edit ChangeSesId-ses-edit-button"></a><esc>/ChangeSesId<return>
    " Html Show edit swap Edit button - Link
    nnoremap <silent> ,hsel a<a class="no-href-link ChangeSesId-ses-edit-button">ChangeDisplay</a><esc>/ChangeSesId\\|ChangeDisplay<return>
    " Html Show edit swap Edit button Modal (data attribute only)
    nnoremap <silent> ,hsem adata-toggle="modal" data-target="ChangeModalId-<% ChangeErbIfNecessary %>-modal"<esc>/ChangeModalId\\|ChangeErbIfNecessary<return>
    
  " Html Show
    " Html Show Left Label wrapper
    nmap <silent> ,hsll a<div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group left-label col-12"><return><%= label_tag(:ChangeAttribute, 'ChangeDisplay:', class: 'col-form-label') %><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="form-row"><return><%#<delete> DeleteThis - insert Html Show Group %><return></div><return></div><return></div><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay\\|DeleteThis<return>
    " Html Top Label (for top label)
    nmap <silent> ,hstl a<div class="form-row"><return><%#<delete> DeleteThis - insert Show Group %><return></div><esc>/DeleteThis<return>
    " Html Show ROw
    nmap <silent> ,hsro a<div class="form-row"><return></div><esc>,,O
    " Html Show Group 1
    nmap <silent> ,hsg1 a<div class="form-group col-12"><return><%#<delete> DeleteThis: insert label tag if top label %><return><esc>,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return>
    " Html Show Group 2
    nmap <silent> ,hsg2 a<div class="form-group col-12 col-sm-6"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,,o,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yP
    " Html Show Group 3
    nmap <silent> ,hsg3 a<div class="form-group col-12 col-sm-4"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,,o,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yPP
    " Html Show Group 4
    nmap <silent> ,hsg4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,,o,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yPPP
    " Html Show Simple Container
    nnoremap <silent> ,hssc a<div class="sse">ChangeDisplay</div><esc>/ChangeDisplay<return>

  " Html Form
    " Html Form BAse
    nnoremap <silent> ,hfba :read ../templates/views/forms/base.html.erb<return>/ChangeThisPls\\|DeleteThisPls<return>
    " Html Form WIth
    nnoremap <silent> ,hfwi a<%= form_with(model: ChangeThisPls, scope: 'ChangeThisPls', url: ChangeThisPls, method: :ChangeThisPls) do \|ChangeThisPls_form\| %><esc>o<% end %><esc>/ChangeThisPls<return>
    " Html Form Single Item
    nnoremap <silent> ,hfsi a<%# DeleteThis - options for errors: 1. as part of partial (shown below and may require "d-flex align-items-start" in parent of repeat block if there is one because when errors are rendered, div with errors will be taller than siblings; aligning start - ie top - fixes this); 2. in generic ses external (id="ses-external-errors"); 3. in specific ses external (id="ChangeSesId-external-errors"); see ses file for more details %><return><%= form_with(model: ChangeObject, scope: 'ChangeScope', url: ChangePath_path, method: :ChangeMethod) do \|ChangeForm_form\| %><return><div class="d-flex align-items-center"><return><%# DeleteThis - use text feild or change input type. NOTE: If input is repeated in loop with left and right siblings, may be necessary to set input width (see note on size attribute) and height (see note on style attribute) %><return><%= ChangeForm_form.text_field(<return>  :ChangeAttribute,<return>value: ChangeValue,<return># DeleteThis - if has left and right siblings, may need to set input witdh by setting size (or possibely by setting style / width); otherwise input width will default to 100%; goal is to have left and right siblings, which cannot happen if width is 100%<return><backspace><backspace>size: ChangeObject.ChangeAttribute.length,<return>class: 'form-control',<return># DeleteThis - if has left and right siblings, may need to set height; goal is to make the ses edit partial the same height as the ses show partials of siblings to left and right<return><backspace><backspace>style: 'height: 26px !important; padding: 3px 6px;',<return>autofocus: true,<return>autocomplete: 'ChangeAutocomplete',<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>maxlength: '255'<return>) %><return>  <a class="pl-3 pr-2 fs-4 c-pointer text-secondary mdi mdi-close-circle-o ChangeSesId-cancel-button"></a><return><button class="pl-2 pr-3 fs-4 btn-no-background text-primary mdi mdi-check-circle do-not-disable"></button><return></div><return><%= render('shared/inline_errors', errors: ChangeObject.errors.messages[:ChangeAttribute]) %><return><% end %><return><esc>/DeleteThis\\|ChangeObject\\|ChangeScope\\|ChangePath\\|ChangeMethod\\|ChangeForm\\|text_field\\|ChangeAttribute\\|ChangeValue\\|true\\|ChangeAutocomplete\\|ChangePlaceholder\\|255\\|ChangeSesId<return>
    " Html Form non-standard forms Array Simple
    nnoremap <silent> ,hfas :read ../templates/views/forms/non_standard_forms/array_simple.html.erb<return>/ChangeModel\\|ChangeUrl\\|ChangeMethod\\|ChangeParentForm\\|ChangeObjects\\|ChangeObject\\|ChangeAttributes\\|ChangeAttribute\\|ReplaceThis\\|DeleteThis:<return>
    " Html Form non-standard forms Array Hash
    nnoremap <silent> ,hfah :read ../templates/views/forms/non_standard_forms/array_hash.html.erb<return>/ChangeModel\\|ChangeScop\\|ChangeUrl\\|ChangeMethod\\|ChangeParentForm\\|ChangeObjects\\|ChangeObject\\|ReplaceThis\\|DeleteThis:\\|ChangeAttribute<return>
    " Html Form Full Errors
    nnoremap <silent> ,hffe a<%= render('shared/full_errors', errors: ChangeThisPls.errors.messages) %><esc>/ChangeThisPls<return>
    " Html Form Fields For
    nnoremap <silent> ,hfff a<%= ChangeThisPls_form.fields_for(:ChangeScope, ChangeModel) do \|ChangeThisPls_form\| %><return><% end %><esc>/ChangeThisPls\\|ChangeScope\\|ChangeModel<return>
    " Html Form LAbel
    nnoremap <silent> ,hfla a<%= ChangeThisPls_form.label(:ChangeAttribute, 'ChangeDisplay', class: 'col-form-label') %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
    " Html Form Label Block
    nnoremap <silent> ,hflb a<%= ChangeThisPls_form.label(:ChangeAttribute, class: 'col-form-label') do %>ChangeDisplay<% end %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
    " Html Form Label for Checkboxes
    " NOTE: this is used by the checkbox mappings so if you chnage this, you
    " need to update those as well...
    nnoremap <silent> ,hflc a<%= ChangeForm_form.label(:ChangeAttribute, 'ChangeDisplay', class: "custom-control-label form-text2") %><return><%# NOTE: for blank label, make this a block with a blank space (" ") between the do and end %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeDisplay<return>
    " Html Form Label Tag
    nnoremap <silent> ,hflt a<%= label_tag(:ChangeAttribute, 'ChangeDisplay', class: 'col-form-label') %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>

  " Html Inputs
    " Html Input Left Label wrapper
    nmap <silent> ,hill a<%#<delete> Left label for ChangeAttribute %><return><div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group left-label col-12"><return><%= ChangeThisPls_form.label(:ChangeAttribute, 'ChangeDisplay:', class: 'col-form-label') %><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="form-row"><return><%#<delete> DeleteThis - insert Html Input Group %><return></div><return></div><return></div><return><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay\\|DeleteThis<return>
    " Html Input Top Label
    nmap <silent> ,hitl a<%#<delete> Top label for ChangeAttribute %><return><div class="form-row mb-2"><return><%#<delete> DeleteThis - insert Html Input Group %><return></div><return><esc>/ChangeAttribute\\|DeleteThis<return>
    " Html Input ROw
    nmap <silent> ,hiro a<div class="form-row"><return><%#<delete> DeleteThis - insert Html Input Group %><return></div><esc>/DeleteThis<return>
    " Html Input Group 1
    nmap <silent> ,hig1 a<div class="form-group col-12"><return><%#<delete> DeleteThis: insert label if top label %><esc>,,o,mminsert_input<down>,,o,hiie,,oa</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return>
    " Html Input Group 2
    nmap <silent> ,hig2 a<div class="form-group col-12 col-sm-6"><return><%#<delete> DeleteThis: insert label if top label %><esc>,,o,mminsert_input<down>,,o,hiie,,oa</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yP
    " Html Input Group 3
    nmap <silent> ,hig3 a<div class="form-group col-12 col-sm-4"><return><%#<delete> DeleteThis: insert label if top label %><esc>,,o,mminsert_input<down>,,o,hiie,,oa</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yPP
    " Html Input Group 4
    nmap <silent> ,hig4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><%#<delete> DeleteThis: insert label if top label %><esc>,,o,mminsert_input<down>,,o,hiie,,oa</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yPPP
    " Html Input Cancel & submit Buttons
    nmap <silent> ,higb :read ../templates/views/elements/buttons_and_links/cancel_and_submit_buttons.html.erb<return>/ChangeSesId\\|ChangeForm<return>
    " Html Input Cancel & submit Icons
    nmap <silent> ,higi :read ../templates/views/elements/buttons_and_links/cancel_and_submit_button_icons.html.erb<return>/ChangeSesId<return>
    " Html Input Cancel & submit from Modal
    nmap <silent> ,higm :read ../templates/views/elements/buttons_and_links/cancel_and_submit_modal_buttons.html.erb<return>/ChangeSesId\\|ChangeForm<return>
    " Html Input Left label Cancel and submit buttons (usually not necessary
    " but can be helpful if you want buttons to align not at end)
    nmap <silent> ,hilc a<%#<delete> Left label cancel and submit buttons %><div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group left-label col-12"><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="d-flex justify-content-end"><return><a class="btn btn-secondary mr-3 ChangeSesId-ses-cancel-button">Cancel</a><return><%= ChangeForm_form.submit "Save", class: "btn btn-primary" %><return></div><return></div><return></div><return><esc>/ChangeForm\\|ChangeSesId<return>
    " Htmo form Input ATtrubutes (main)
    nnoremap <silent> ,hiat avalue: ChangeValue, # text Specifies the intial value for the control.If type = "checkbox" or type = "radio" this attribute is required.<return>placeholder: ChangeValue, # html-5 text Specifies a short hint that describes the expected value.<return>required: ChangeValue, # html-5 required Specifies that an input field must be filled out before submitting the form<return>alt: ChangeValue, # text This specifies text to be used in case the browser/user agent can't render the input control.<return>autocomplete: ChangeValue, # html-5 on off Specifies for enabling or disabling of autocomplete in <input> element<return>autofocus: ChangeValue, # html-5 autofocus pecifies that <input> element should automatically get focus when the page loads <return>checked: ChangeValue, # checked If type = "radio" or type = "checkbox" it will already be selected when the page loads.<return>max: ChangeValue, # html-5 autofocus Specifies the maximum value.<return>maxlength: ChangeValue, # number (set to 255 for strings) Defines the maximum number of characters allowed in a text field<return>min: ChangeValue, # html-5 number Specifies the minimum value.<return>minlength: 'ChangeMinLength', # number Defines the minimum number of characters allowed in a text field<return>multiple: ChangeValue, # html-5 multiple Specifies that a user can enter multiple values<return>size: ChangeValue, # number Specifies the width of the control. If type = "text" or type = "password" this refers to the width in characters. Otherwise it's in pixels.<return>step: ChangeValue, # html-5 number Specifies the legal number intervals for an input field<return>
    " Htmo form Input ATtrubutes (all others)
    nnoremap <silent> ,hiaT aaccept: ChangeValue, # content types Specifies a comma-separated list of content types that the server accepts.<return>align: ChangeValue, # left right top middle bottom Deprecated − Defines the alignment of content<return>disabled: ChangeValue, # disabled Disables the input control. The button won't accept changes from the user. It also cannot receive focus and will be skipped when tabbing.<return>form: ChangeValue, # html-5 form_id Specifies one or more forms<return>formaction: ChangeValue, # html-5 URL Specifies the URL of the file that will process the input control when the form is submitted<return>formenctypeh: ChangeValue, #tml-5 application/x-www-form-urlencoded multipart/form-data text/plain Specifies how the form-data should be encoded when submitting it to the serve<return>formmethod: ChangeValue, #  html-5 post get Defines the HTTP method for sending data to the action URL<return>formnovalidate: ChangeValue, # html-5 formnovalidate Defines that form elements should not be validated when submitted<return>formtarget: ChangeValue, # html-5 _blank _self _parent _top Specifies the target where the response will be display that is received after submitting the form<return>height: ChangeValue, # html-5 pixels Specifies the height<return>list: ChangeValue, # html-5 datalist_id Specifies the <datalist> element that contains pre-defined options for an <input> element<return>name: ChangeValue, # text Assigns a name to the input control.<return>pattern: ChangeValue, # html-5 regexp Specifies a regular expression that an <input> element's value is checked against<return>readonly: ChangeValue, # readonly Sets the input control to read-only. It won't allow the user to change the value. The control however, can receive focus and are included when tabbing through the form controls.<return>src: ChangeValue, # URL Defines the URL of the image to display. Used only for type = "image".<return>type: ChangeValue, # button checkbox color date datetime datetime-local email file hidden image month number password radio range reset search submit tel text time url week Specifies the type of control.<return>width: ChangeValue, # html-5 pixels Specifies the width<esc>/ChangeValue\\|true<return>
    " Html Input HIdden field
    nnoremap <silent> ,hihf a<%= ChangeThisPls_form.hidden_field(:ChangeThisPls, value: ChangeThisPls) %><esc>/ChangeThisPls<return>
    " Html Input Hidden field Tag
    nnoremap <silent> ,hiht a<%= hidden_field_tag(:ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
    " Html Input Text Field
    nmap <silent> ,hitf a<%= ChangeForm_form.text_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>,hiat) %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue<return>
    " Html Input Text Area
    nmap <silent> ,hita a<%= ChangeForm_form.text_area(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>,hiat) %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue\\|true<return>
    " Html Input Number Field
    nnoremap <silent> ,hinf a<%= ChangeForm_form.number_field(<return>  :ChangeAttribute,<return>value: ChangeValue,<return>class: 'form-control',<return>autofocus: true,<return>autocomplete: 'ChangeAutocomplete',<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>size: ChangeSize,<return>min: ChangeMin,<return>max: ChangeMax,<return>step: ChangeStep,<return>) %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue\\|true\\|ChangeAutocomplete\\|ChangePlaceholder\\|ChangeSize\\|ChangeMin\\|ChangeMax\\|ChangeStep<return>
    " Html Input Rich Text
    nnoremap <silent> ,hirt a<%= ChangeThisPls_form.rich_text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
    " Html Input Email Field
    nnoremap <silent> ,hief a<%= ChangeForm_form.email_field(<return>  :ChangeAttribute,<return>value: ChangeValue,<return>class: 'form-control',<return>autofocus: true,<return>autocomplete: 'email',<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>size: 'ChangeSize',<return>maxlength: 'ChangeMaxLength'<return>) %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue\\|true\\|'email'\\|ChangePlaceholder\\|ChangeSize\\|ChangeMaxLength<return>
    " Html Input Checkbox Stacked
    nmap <silent> ,hics a<div class="pt-1"><esc>,,o,hicw/ChangeForm<return>cgnxxx<esc>./ChangeAttribute<return>cgnyyy<esc>./ChangeDisplay<return>cgnzzz<esc><down><down>,,o,hicw<down><down><down>,o</div><esc>/xxx<return>cgnChangeForm<esc>./yyy<return>cgnChangeAttribute<esc>./zzz<return>cgnChangeDisplay<esc>/ChangeForm\\|ChangeAttribute\\|ChangeDisplay<return>nnnnn
    " Html Input Checkbox Inline (exact same as hics but add d-flex to parent div)
    nmap <silent> ,hici a<div class="pt-1 d-flex"><esc>,,o,hicw/ChangeForm<return>cgnxxx<esc>./ChangeAttribute<return>cgnyyy<esc>./ChangeDisplay<return>cgnzzz<esc><down><down>,,o,hicw<down><down><down>,o</div><esc>/xxx<return>cgnChangeForm<esc>./yyy<return>cgnChangeAttribute<esc>./zzz<return>cgnChangeDisplay<esc>/ChangeForm\\|ChangeAttribute\\|ChangeDisplay<return>nnnnn
    " Html Input Checkbox Wrapper
    " this is used by by ,hics and ,hici so if you change this you might
    " need to change those as well
    nmap <silent> ,hicw a<div class="pr-2 custom-control custom-checkbox"><esc>,,o,hicb<esc>,,o,hflc<esc><down><down>,o</div><esc>/ChangeForm\\|ChangeAttribute\\|ChangeDisplay<return>
    " Html Input CheckBox
    " this is used by ,hicw so if you change this you might need to change
    " ,hicw as well
    nnoremap <silent> ,hicb a<%= ChangeForm_form.check_box(:ChangeAttribute, class: 'custom-control-input') %><esc>/ChangeForm\\|ChangeAttribute<return>
    " Html Input CheckBox full
    nnoremap <silent> ,hicB a<%= ChangeThisPls_form.check_box(:ChangeThisPls, { class: 'custom-control-input' }, ChangeThisPls, false) %><esc>/ChangeThisPls<return>
    " Html Input Radio Inline
    nnoremap <silent> ,hiri a<div class="pt-1"><return><label class="custom-control custom-radio custom-control-inline"><return><%= ChangeForm_form.radio_button(:ChangeAttribute, ChangeValue, class: 'custom-control-input') %><return><span class="custom-control-label form-text2">ChangeDisplay</span><return></label><return><%# DeleteThis - copy label and contents for additional options %><return></div><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue\\|ChangeDisplay\\|DeleteThis<return>
    " Html Input Radio Stacked
    nnoremap <silent> ,hirs a<div class="pt-1"><return><label class="custom-control custom-radio"><return><%= ChangeForm_form.radio_button(:ChangeAttribute, ChangeValue, class: 'custom-control-input') %><return><span class="custom-control-label form-text2">ChangeDisplay</span><return></label><return><%# DeleteThis - copy label and contents for additional options %><return></div><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue\\|ChangeDisplay\\|DeleteThis<return>
    " Html Input Toggle Wrapper
    nnoremap <silent> ,hitw :read ../templates/views/elements/toggle_wrapper.html.erb<return>/DeleteThis<return>
    " Html Input Toggle Stand alone (with it's own form)
    nnoremap <silent> ,hits :read ../templates/views/elements/toggle_with_form.html.erb<return>/ChangeModel\\|ChangeScope\\|ChangeUrl\\|ChangeMethod\\|ChangeId\\|ChangeForm\\|ChangeColor\\|switch-button-yesno\\|DeleteThis\\|ChangeAttribute<return>
    " Html Input TOggle
    nnoremap <silent> ,hito :read ../templates/views/elements/toggle.html.erb<return>/ChangeForm\\|ChangeColor\\|switch-button-yesno\\|DeleteThis\\|ChangeAttribute<return>
    " Html Input Password field
    nnoremap <silent> ,hipf a<%= ChangeForm_form.password_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return>autofocus: true,<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>size: ChangeSize,<return>minlength: ChangeMinLength) %><esc>/ChangeAttribute\\|ChangeForm\\|true\\|ChangePlaceholder\\|ChangeSize\\|ChangeMinLength<return>
    " Html Input Password Confirmation
    nnoremap <silent> ,hipc a<%= ChangeThisPls_form.password_field(:password_confirmation, class: 'form-control') %><esc>/ChangeThisPls<return>
    " Html Input SElect
    nmap <silent> ,hise a<%=<delete> ChangeForm_form.select(<delete><return>  :ChangeAttribute,<return>ChangeOptionsArray,<return>{ include_blank: 'Select' },<return>{<delete><return><tab>class: 'form-control',<return><esc>,hiat<backspace>})<return>%><esc>/ChangeForm\\|ChangeAttribute\\|ChangeOptionsArray\\|ChangeValue\\|true<return>
    " Html Input Select Options for select
    nnoremap <silent> ,hiso aoptions_for_select(ChangeOptionsArrayDisplayFirstValueSecond, ChangeSelectedOption),<esc>/ChangeOptionsArrayDisplayFirstValueSecond\\|ChangeSelectedOption<return>
    " Html Input Select Grouped options for select
    nnoremap <silent> ,hisg agrouped_options_for_select(ChangeOptionsHash, ChangeSelectedOption),<esc>/ChangeOptionsHash\\|ChangeSelectedOption<return>
    " Html Input Select Multiple
    nnoremap <silent> ,hism a<%= ChangeForm_form.select(<return>  :ChangeAttribute,<return>ChangeOptionsArray,<return>{ include_hidden: false,<return>  include_blank: "Select"<return><backspace>},<return>{ class: 'form-control',<return>  multiple: true,<return>autofocus: true,<return>required: true<return><backspace>})<return>%><esc>/ChangeForm\\|ChangeAttribute\\|ChangeOptionsArray\\|autofocus\\|required<return>
    " Html Input Select Block
    nnoremap <silent> ,hisb a<%= ChangeThisPls_form.select(:ChangeThisPls , [], { include_blank: 'Select' }, { class: 'form-control' }) do %><esc>o<% end %><esc>/ChangeThisPls<return>
    " Html Input OPtion
    nnoremap <silent> ,hiop a<option <%= "selected='true'" if ChangeThisPls %> value="<%= ChangeThisPls %>">ChangeThisPls</option><esc>/ChangeThisPls<return>
    " Html Input CAlendar
    nmap <silent> ,hica a<%= ChangeForm_form.text_field(<return>  :ChangeAttribute,<return>class: 'form-control datetimepicker',<return>value: ChangeObject.ChangeAttribute.try(:strftime, '%A, %B %-d, %Y'),<return>autocomplete: 'off',<return>data: { 'min-view': '2', 'date-format': 'MM d, yyyy' },<return>onclick: "removeInlineCalendarsAfterAjax()",<return><esc>,hiat) %><return><esc>,mmessagehtmlinputcalendar<esc>/ChangeForm\\|ChangeAttribute\\|ChangeObject\\|ChangeValue\\|true\\|DeleteThis<return>
    " Html Input Calendar with Button
    nmap <silent> ,hicb a<div class="input-group date datetimepicker" data-min-view="2" data-date-format="DD, MM d, yyyy"><return><%= ChangeForm_form.text_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return>value: ChangeObject.ChangeAttribute.try(:strftime, '%A, %B %-d, %Y'),<return>autocomplete: 'off',<return>onclick: "removeInlineCalendarsAfterAjax()",<return><esc>,hiat) %><return><space><space><div class="input-group-append"><return><a class="btn btn-primary cal-button do-not-disable" onclick="removeInlineCalendarsAfterAjax()"><i class="icon-th mdi mdi-calendar"></i></a><return></div><return></div><return><esc>,mmessagehtmlinputcalendar<esc>/ChangeForm\\|ChangeAttribute\\|ChangeObject\\|ChangeValue\\|true\\|DeleteThis<return>
    nnoremap <silent> ,mmessagehtmlinputcalendar a<%# DeleteThis - value of nil or if value is excluded, text box will be blank and calendar defaults to today. If a value is included, make sure it is a date, not a date time and include correct strftime %><return><%# DeleteThis - min-view: 0 is 5 minutes; 1 is hour; 2 is date %><return><%# DeleteThis - date-format: MM is January; mm is 01; m is 1 (no preceding 0); DD is Monday (day of week); dd is 01 (day of month); d is 1 (no preceding 0) %><return><%# DeleteThis - see https://xdsoft.net/jqplugins/datetimepicker/ for more options %>
    " Html Input Errors
    nnoremap <silent> ,hier a<div id="ChangeId_errors"><return><%# DeleteThis - if using a single error message for repeat block of many objects with ajax form, remove render from html and fill div contents with errors partial on ajax instead %><return><%= render('shared/errors', object: ChangeObject) %><return></div><esc>/ChangeId\\|DeleteThis\\|ChangeObject<return>
    " html form input inline errors
    nnoremap <silent> ,hiie a<%= render('shared/inline_errors', errors: ChangeObject.errors.messages[:ChangeAttribute]) %><esc>/ChangeObject\\|ChangeAttribute<return>
    " html form input inline errors
    nnoremap <silent> ,hiiE a<div id="ChangeId_errors"><return><%= render('shared/inline_errors', errors: ChangeObject.errors.messages[:ChangeAttribute]) %><return></div><esc>/ChangeId\\|ChangeObject\\|ChangeAttribute<return>
    " Html Input SUbmit
    nnoremap <silent> ,hisu a<%= ChangeForm_form.submit(:ChangeDisplay, class: 'btn btn-ChangeColor') %><esc>/ChangeForm\\|ChangeDisplay\\|ChangeColor<return>
    " Html Input Submit Link
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
    " Ruby Basic Hash Lookup
    nnoremap <silent> ,rbhl alookup_hash = {<return>ChangeKey: ChangeValue,<return>ChangeKey: ChangeValue<return>}<return>lookup_hash[ChangeVariarble]<return># DeleteThis - you may need to add ".to_sym" to variable<esc>/ChangeKey\\|ChangeValue\\|ChangeVariarble\\|DeleteThis<return>
    " Ruby Basic TErnary
    nnoremap <silent> ,rbte aChangeBoolean ? ChangeTrueResult : ChangeFalseResult<esc>/ChangeBoolean\\|ChangeTrueResult\\|ChangeFalseResult<return>
    " Ruby Basic Puts Debugger
    nnoremap <silent> ,rbpd aputs 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts nil<return>puts 'ChangeLabel:'<return>puts ChangeThisPls<esc>/ChangeLabel\\|ChangeThisPls<return>
    " Ruby Basic puts Json pretty Generate
    nnoremap <silent> ,rbjg aputs JSON.pretty_generate(ChangeHash)<esc>/ChangeHash<return>
    " Ruby Basic puts Json pretty Generate
    nnoremap <silent> ,rbjp aJSON.parse(ChangeNonHash)<esc>/ChangeNonHash<return>

    nnoremap <silent> ,rbde a# ChangeDescription<return><backspace><backspace>def ChangeMethod<return>end<esc>/ChangeDescription\\|ChangeMethod<return>
    " Ruby Basic Attach File
    nnoremap <silent> ,rbaf aattach(io: File.open(Rails.root.join(ChangePath)), filename: 'ChangeFileName', content_type: 'ChangeContentType')<return># DeleteThis - common file types: application/pdf, image/jpeg, image/gif, image/png, video/quicktime, video/mp4, video/webm, audio/ogg<esc>/ChangePath\\|ChangeFileName\\|ChangeContentType<return>
    " Ruby Basic Cancancan Model based
    nnoremap <silent> ,rbcm acan?(:ChangeAbility, @ChangeObject)<esc>/ChangeAbility\\|ChangeObject<return>
    " Ruby Basic Cancancan Non-mmodel Model based (granular / controller action specific)
    nnoremap <silent> ,rbcn acan?(:ChangeAbility, :ChangeControllerOrFeature)<esc>/ChangeAbility\\|ChangeControllerOrFeature<return>
    " Ruby Basic Interpolated String
    nnoremap <silent> ,rbis a#{}<esc>i

    " Ruby Basic Dir
    nmap <silent> ,rbdi ,mmdir_notesaDir[Rails.root.join('app', 'ChangePath', '**', '*.ChangeExtension')].each do \|path\|<return># DeleteThisNote: add logic here...<return>DeleteThisNote: use this to clean file name: path.remove(Rails.root.join('app', 'ChangePath')).split('<delete>.ChangeExtension').first<return><backspace><backspace>end<esc>/DeleteThisNote\\|ChangePath\\|ChangeExtension<return>
    " Ruby basic Rails Root
    nnoremap <silent> ,rbrr aRails.root.join('ChangeThis', 'ChangeThis', 'Etc.')<esc>/ChangeThis\\|Etc.<return>
    " Ruby Basic BEgin
    nnoremap <silent> ,rbbe arescue StandardError => e<return># DeleteThis - some exception handling<return><backspace><backspace>else<return># DeleteThis - add logic to run only when no errors occur<return><backspace><backspace>ensure<return># DeleteThis - add logic to run whether there are error or not<esc>/DeleteThis<return>
    " Ruby Basic BEgin (full)
    nnoremap <silent> ,rbbE abegin<return># DeleteThis - have code that could possibly error<return><backspace><backspace>rescue StandardError => e<return># DeleteThis - some exception handling<return><backspace><backspace>else<return># DeleteThis - add logic to run only when no errors occur<return><backspace><backspace>ensure<return># DeleteThis - add logic to run whether there are error or not<return><backspace><backspace>end<esc>/DeleteThis<return>
    " Ruby Basic String from Time
    nnoremap <silent> ,rbst astrftime('%A, %B %-d, %Y')<return># DeleteThis - %A gets day spelled out - "Sunday"; %a gets day spelled out abbreviated - "Sun"<return>DeleteThis - %B gets month spelled out - "January"; %b gets month spelled out abbreviated - "Jan"<return>DeleteThis - %d gets day of month (ex 01-31); %-d gets day of month with blank instead of 0 padding (ex 1-31)<return>DeleteThis - %Y gets full year - 2021; %y gets last 2 digits of year - 21<return>DeleteThis - see here for more https://apidock.com/ruby/DateTime/strftime<esc>/%A, %B %-d, %Y\\|DeleteThis<return>


  " Ruby model mappings
    " Ruby Models BAse
    nnoremap <silent> ,rmba :read ../templates/models/base/base.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Models Base Virtual
    nnoremap <silent> ,rmbv :read ../templates/models/base/virtual.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Models Base Class
    nnoremap <silent> ,rmbc :read ../templates/models/base/class.rb<return>ggdd/ChangeThisPls\\|change_args<return>
    " Ruby Models Sub Class
    nnoremap <silent> ,rmbs :read ../templates/models/base/sub_class.rb<return>ggdd/ChangeThisPls\\|change_args<return>
    " Ruby Models MOdule
    nnoremap <silent> ,rmbm :read ../templates/models/base/module.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Models SErvice
    nnoremap <silent> ,rmbs :read ../templates/models/base/service.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Models foreign key
    nnoremap <silent> ,rmfk a{ to_table: 'ChangeTableName' }<esc>/ChangeTableName<return>
    " Ruby Models Up Down
    nnoremap <silent> ,rmud adef up<return># Deletethis - insert migration methods for up<return><backspace><backspace>end<return><return>def down<return># Deletethis - insert migration methods for down<return>DeleteThis - NOTE: if dropping table, no need to remove columns or indexes because they will be removed when dropping table<return>DeleteThis - NOTE if removing column, no need to remove index for that column, because they will be removed whyen removing column<return><backspace><backspace>end<esc>/Deletethis<return>
    " Ruby Models Add Column
    nnoremap <silent> ,rmac aadd_column :ChangeTableName, :ChangeColumn, :ChangeColumnType, ChangeOptions<esc>/ChangeTableName\\|ChangeColumnType\\|ChangeColumn\\|ChangeOptions<return>
    " Ruby Models Add Reference
    nnoremap <silent> ,rmar aadd_reference :ChangeTableName, :ChangeColumn, ChangeOptions<esc>/ChangeTableName\\|ChangeColumn\\|ChangeOptions<return>
    " Ruby Models Change Column
    nnoremap <silent> ,rmcc a# DeleteThis - Change migration to Up / Down if not already changed<return>DeleteThis - add change to up method<return>ChangeDescriptionOfChange<return><backspace><backspace>change_column :ChangeTableName, :ChangeColumn, :ChangeColumnType, ChangeOptions<return># DeleteThis - add reversion to down method<return>ChangeDescriptionOfReversion<return><backspace><backspace>change_column :ChangeTableName, :ChangeColumn, :ChangeColumnType, ChangeOptions<esc>/DeleteThis\\|ChangeDescriptionOfChange\\|ChangeDescriptionOfReversion\\|ChangeTableName\\|ChangeColumnType\\|ChangeColumn\\|ChangeOptions<return>
    " Ruby Models Add Index
    nnoremap <silent> ,rmai a# DeleteThis - remove "unique: true," if index does not need to be unique<return><backspace><backspace>add_index :ChangeTableName, %i[ChangeAttributeOrAttributesIfMultiple], unique: true, name: 'index_ChangeTableName_on_ChangeAttributeOrAttributesIfMultiple'<esc>/ChangeTableName\\|ChangeAttributeOrAttributesIfMultiple\\| unique: true,\\|DeleteThis<return>
    " Ruby Models Add Index (case insensitive)
    nnoremap <silent> ,rmaI a# DeleteThis - Change migration to Up / Down if not already changed<return><backspace><backspace>execute <<-SQL<return><tab>CREATE UNIQUE INDEX index_ChangeTableName_on_lower_ChangeCaseInsensitiveAttribute_and_ChangeAdditionalAttributesIfAny ON ChangeTableName(LOWER(ChangeCaseInsensitiveAttribute), ChangeAdditionalAttributesIfAny);<return><C-d>SQL<return># DeleteThis - move code below to down method (index must be removed in down method)<return>DeleteThis - if a table is created, simply drop table (dropping table will remove index)<return><backspace><backspace>drop_table :ChangeTableName<return># DeleteThis - if tabe was not created, remove table explicitly<return><backspace><backspace>remove_index :index_ChangeTableName_on_lower_ChangeCaseInsensitiveAttribute_and_ChangeAdditionalAttributesIfAny<esc>/DeleteThis\\|ChangeCaseInsensitiveAttribute\\|ChangeAdditionalAttributesIfAny\\|ChangeTableName<return>
    " Ruby Models Remove Column
    nnoremap <silent> ,rmrc aremove_column :ChangeTableName, :ChangeColumn<esc>/ChangeTableName\\|ChangeColumn<return>
    " Ruby Models Remove Index
    nnoremap <silent> ,rmri aremove_index :ChangeTableName, name: ChangeIndexName<esc>/ChangeTableName\\|ChangeIndexName<return>
    " Ruby Models Drop Table
    nnoremap <silent> ,rmdt adrop_table :ChangeTableName<esc>/ChangeTableName<return>
    " Ruby Models Cancancan Model based
    nnoremap <silent> ,rmcm acan %i[ChangeControllerOrFeature], ChangeModel, ChangeMethod: user.ChangeValue<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|ChangeModel\\|ChangeMethod\\|ChangeValue<enter>
    " Ruby Models Cancancan Non-model based
    nnoremap <silent> ,rmcn acan %i[ChangeAbility], :ChangeControllerOrFeature<esc>/ChangeAbility\\|ChangeControllerOrFeature<enter>
    " Ruby Models Belongs To association
    nnoremap <silent> ,rmbt abelongs_to :ChangeParentName, class_name: 'ChangeParentModel', inverse_of: :ChangeChildrenNameIfHasManyOrChildNameIfHasOne, optional: true, autosave: false<esc>/ChangeParentName\\|ChangeParentModel\\|ChangeChildrenNameIfHasManyOrChildNameIfHasOne<return>
    " Ruby Models Has Many association
    nnoremap <silent> ,rmhm ahas_many :ChangeChildrenName, class_name: 'ChangeChildModel', foreign_key: 'ChangeParentName_id', inverse_of: :ChangeParentName, dependent: :destroy, autosave: false<esc>/ChangeChildrenName\\|ChangeChildModel\\|ChangeParentName<return>
    " Ruby Models has Many Through association
    nnoremap <silent> ,rmhM ahas_many :ChangeChildrenName, through: :ChangeConnectingAssociationName, source: :ChangeChildrenName, inverse_of: :ChangeTopParentModel, autosave: false<esc>/ChangeChildrenName\\|ChangeChildrenName\\|ChangeConnectingAssociationName\\|ChangeTopParentModel<return>
    " Ruby Models Has One association
    nnoremap <silent> ,rmho ahas_one :ChangeChildName, class_name: 'ChangeChildModel', inverse_of: :ChangeParentName, dependent: :destroy, autosave: false<esc>/ChangeChildName\\|ChangeChildModel\\|ChangeParentName<return>
    " Ruby Models has One Through association
    nnoremap <silent> ,rmhO ahas_one :ChangeChildOrParentName, through: :ChangeConnectingAssociationName, source: :ChangeChildOrParentName, inverse_of: :ChangeBottomChildOrTopParentModel, autosave: false<esc>/ChangeChildOrParentName\\|ChangeChildOrParentName\\|ChangeConnectingAssociationName\\|ChangeBottomChildOrTopParentModel<return>
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
    " Ruby Models SCope
    nnoremap <silent> ,rmsc ascope :ChangeName, -> { ChangeLogic }<esc>/ChangeName\\|ChangeLogic<return>
    " Ruby Models Scope with Argument(s)
    nnoremap <silent> ,rmsa ascope :ChangeName, ->(ChangeArgument) { ChangeLogic }<esc>/ChangeName\\|ChangeArgument\\|ChangeLogic<return>
    " Ruby Models Scope Order
    nnoremap <silent> ,rmso ascope :ChangeName_order, -> { ChangeOrder }<esc>/ChangeName\\|ChangeOrder<return>
    " Ruby Models Scope Order
    nnoremap <silent> ,rmsO ascope :order_and_distinct_on_ChangeAttributes, -> { select('DISTINCT ON (ChangeTable.ChangeAttribute, LOWER(ChangeTable.ChangeCaseInsensitiveAttribute)) ChangeTableToAccessAllAttributes.*').order('LOWER(ChangeTable.ChangeAttribute)') }<esc>/ChangeAttributes\\|ChangeTableToAccessAllAttributes\\|ChangeTable\\|ChangeAttribute\\|ChangeCaseInsensitiveAttribute<return>
    " Ruby Models Scope Query
    nnoremap <silent> ,rmsq ascope :query, ->(query) { where("ChangeTable.ChangeAttribute ILIKE :query", query: "%#{query}%") }<esc>/ChangeTable\\|ChangeAttribute<return>
    " Ruby Models WHere (full)
    nnoremap <silent> ,rmwh awhere("CONCAT_WS(' ', ChangeTable.ChangeAttribute, ChangeTable.ChangeAttribute) ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute IN (:ChangeArray) OR ChangeTable.ChangeAttribute = :ChangeThis OR ChangeTable.ChangeAttribute IS NULL OR ChangeTable.ChangeAttribute IS NOT NULL", ChangeSequence: "%#{ChangeSequence}%", ChangeArray: ChangeArray, ChangeThis: ChangeThis)<esc>/ChangeTable\\|ChangeAttribute<return>
    " Ruby Models Validates Base
    nnoremap <silent> ,rmvb avalidates :ChangeAttribute, ChangeValidation: { message: 'ChangeMessage' }, if: Proc.new { \|ChangeObject\| ChangeObject.ChangeLogic }<esc>/ChangeAttribute\\|ChangeValidation\\|ChangeObject\\|ChangeLogic\\|ChangeMessage<return>
    " Ruby Models Validates Presence
    nnoremap <silent> ,rmvp avalidates :ChangeAttribute, presence: { message: 'please add ChangeAttribute' }<esc>/ChangeAttribute<return>
    " Ruby Models Validates Length
    nnoremap <silent> ,rmvl avalidates :ChangeAttribute, length: { maximum: 255, message: 'ChangeAttribute is too long (maximum is 255 characters' }<esc>/ChangeAttribute\\|255<return>
    " Ruby Models Validates Uniqueness
    nnoremap <silent> ,rmvu avalidates :ChangeAttribute, uniqueness: { message: 'this ChangeAttribute has already been taken' }<esc>/ChangeAttribute<return>
    " Ruby Models Validates Uniqueness
    nnoremap <silent> ,rmvU avalidates :ChangeAttribute, uniqueness: { case_sensitive: false, scope: %i[ChangeAttributes], message: 'this ChangeAttribute has already been taken' }<esc>/case_sensitive: false, \\|ChangeAttributes\\|ChangeAttribute<return>
    " Ruby Models Validates Numericality
    nnoremap <silent> ,rmvn avalidates :ChangeAttribute, numericality: { only_integer: true, allow_nil: true, less_than: 100, less_than_or_eqaul_to: 100, equal_to: 100, greater_than: 100, greater_than_or_equal_to: 100, other_than: 100, odd: true, even: true, message: 'ChangeAttribute must be a number' }<esc>/ChangeAttribute<return>
    " Ruby Models Validates Dependent_on
    nnoremap <silent> ,rmvd avalidates :ChangeAttribute, dependent_on: { independent_path: %i[ChangeMethods], # DeleteThis - independent_path is required<return># DeleteThis - dependent_path is optional<return><backspace><backspace>dependent_path: %i[ChangeMethods],<return># DeleteThis - one of the below is required if using specific values(can only pick one) values<return><backspace><backspace>if_independent_is: [ChangeValues],<return>if_independent_is_not: [ChangeValues],<return># DeleteThis - one of the below is required if using specific values (can only pick one)<return><backspace><backspace>dependent_must_be: [ChangeValues],<return>dependent_cannot_be: [ChangeValues],<return># DeleteThis - one of the below is required if simply comparing to each other (can only pick one)<return><backspace><backspace>equal_values: true,<return>not_equal_values: true,<return>depenent_greater_than_or_equal_to_independent: true,<return>depenent_less_than_or_equal_to_independent: true,<return># DeleteThis - message is optional<return><backspace><backspace>message: 'ChangeMessage' }<esc>/ChangeAttribute\\|ChangeMethods\\|ChangeValues\\|ChangeMessage\\|DeleteThis<return>
    " Ruby Models Validates Attachment
    nnoremap <silent> ,rmva avalidates :ChangeAttachmenName, size: { less_than: ChangeSize.megabytes, message: 'ChangeMessage' }<return>validates :ChangeAttachmenName, attached: { message: 'ChangeAttribute is too large (ChangeSize MB max)' }, if: Proc.new { \|ChangeObject\| ChangeObject.ChangeLogic }<return>validates :ChangeAttachmenName, content_type: { in: %w[image/jpeg image/gif image/png application/pdf], message: "Attached must be a valid format. Valid formats are: jpeg, gif, png, pdf" }<return>validates :ChangeAttachmenName, content_type: { in: %w[video/quicktime video/mp4 video/webm audio/ogg], message: "Attached must be a valid image video format. Valid formats are:  mp4, mov, webm, ogg" }<esc>/ChangeAttachmenName\\|ChangeSize\\|MB\\|ChangeObject\\|ChangeLogic\\|ChangeMessage<return>
    " Ruby Models Validates Custom
    nnoremap <silent> ,rmvc avalidate :ChangeCustomValidation<return># DeleteThis - move method to private section of model<return><backspace><backspace>def ChangeCustomValidation<return># DeleteThis - insert logic<return><backspace><backspace>errors.add(:ChangeAttribute, 'ChangeMessage')<return>end<esc>/ChangeCustomValidation\\|DeleteThis\\|ChangeAttribute\\|ChangeMessage<return>
    " Ruby Models Validates if / unless
    nnoremap <silent> ,rmvi a, if: proc { \|ChangeObject\| ChangeObject.ChangeLogic }<esc>/if\\|ChangeObject\\|ChangeAttribute\\|ChangeLogic<return> 
    " Ruby Models Validates Strip
    nnoremap <silent> ,rmvs avalidates :ChangeAttribute, strip: true<esc>/ChangeAttribute<return>
    " Ruby Models Process Attributes
    nnoremap <silent> ,rmpa :read ../templates/models/misc/process_attributes.rb<return>/DeleteThis\\|ChangeAttribute\\|ChangeValue\\|ChangeIndedependentAttribute<return>
    nnoremap <silent> ,rmpA o# DeleteThis - this goes in callbacks section<return><backspace><backspace>before_validation :process_attributes<return># DeleteThis - this goes in callback methods section<return><backspace><backspace>def process_attributes<esc>:read ../templates/models/misc/process_attributes.rb<return>10<down>oend<esc>/DeleteThis\\|ChangeAttribute\\|ChangeValue\\|ChangeIndedependentAttribute<return>
    " Ruby Models Attributes Enum
    nnoremap <silent> ,rmae aenum ChangeAttribute: { ChangeValueSymbolOrString: ChangeInteger }, _prefix: true<return># DeleteThis -  If attribute will not be displayed, use symbol. If attribute will be displayed (esp. in options for select), use string (this way display does not require processing). If display changes down the road, you may want to refactor to symbol with class method for displays (and opitons for select) and instance method for display (use ,rmas for example)<esc>/ChangeAttribute\\|ChangeValueSymbolOrString\\|ChangeInteger\\|DeleteThis<return>
    " Ruby Models Attributes enum Symbol example
    nnoremap <silent> ,rmas aclass << self<return>def status_displays<return>{ 'It is pending' => 0, 'Officially active' => 1 }<return>end<return>end<return>enum status: { pending: 0, active: 1 }, _prefix: true<return>def display_status<return>self.class.status_displays.key(status_for_database)<return>end<return>end<esc>
    nnoremap <silent> ,rmaE aenum ChangeAttribute: ChangeClass::SOMECONSTANT, _prefix: ChangeToTrueOrCustomSymbol, _suffix: ChangeToTrueOrCustomSymbol<return># DeleteThis - you can add custom methods to ChangeClass and then use them in ths model, example:<return><backspace><backspace>def ChangeAttribute_data<return>@ChangeAttribute_data \|\|= ChangeClass.new(ChangeAttribute)<return>end<esc>/ChangeAttribute\\|ChangeClass\:\:SOMECONSTANT\\|, _prefix: ChangeToTrueOrCustomSymbol\\|, _suffix: ChangeToTrueOrCustomSymbol\\|DeleteThis\\|ChangeClass<return>
    " Ruby Models Attributes Array
    nnoremap <silent> ,rmaa aserialize :ChangeAttribute, Array
    " Ruby Models Attributes Hash
    nnoremap <silent> ,rmah aserialize :ChangeAttribute, Hash
    " Ruby Models ORder
    nnoremap <silent> ,rmor aorder(:ChangeAttribute)<esc>/ChangeAttribute<return>
    " Ruby Models Order Descending
    nnoremap <silent> ,rmod aorder(ChangeAttribute: :desc)<esc>/ChangeAttribute<return>
    " Ruby Models Order Case insensitive
    nnoremap <silent> ,rmoc aorder("LOWER(ChangeAttribute)")<esc>/ChangeAttribute<return>
    " Ruby Models ORder (full)
    nnoremap <silent> ,rmoR aorder("LOWER(ChangeAttribute) DESC")<esc>/ChangeAttribute<return>
    

  " Ruby Routes
    " main routes
      " Ruby Routes NAmespace
      nnoremap <silent> ,rrna anamespace :ChangeNamespace do<return>end<esc>/ChangeNamespace<return>
      " Ruby Routes REsources
      nnoremap <silent> ,rrre aresources :ChangeController, only: %i[index show create update destroy]<esc><up>/ChangeController\\|index \\|show \\|create \\|update \\|destroy<return>
      " Ruby Routes Resources Nested
      nnoremap <silent> ,rrrn aget ':id/ChangeController', to: 'ChangeController#index', as: :ChangeController<esc>opost ':id/ChangeController', to: 'ChangeController#create', as: :ChangeController<return># DeleteThis - remove as: :ChangeController in post method if already included in get method above (including it in both will cause error because rails tries to create the same url helper twice)<return><backspace><backspace>resources :ChangeController, only: %i[show update destroy]<esc>/ChangeController\\|DeleteThis<return>
      " Ruby Routes Member Get
      nnoremap <silent> ,rrmg aget ':id/ChangeMemberInUrl', to: 'ChangeMemberController#show', as: :ChangeMemberSingular<esc>/ChangeMemberInUrl\\|ChangeMemberController\\|ChangeMemberSingular<return>
      " Ruby Routes GEt (for non-restful routes)
      nnoremap <silent> ,rrge aget 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
    " other routes
      "
      nnoremap <silent> ,rrsc ascope path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls do<return>end<esc>/ChangeThisPls<return>
      " Ruby Routes REsources full
      nnoremap <silent> ,rrrE aresources path: :ChangeThisPls, controller: :ChangeThisPls, as: :ChangeThisPls, only: %i[index show create update destroy]<esc>/ChangeThisPls<return>

      nnoremap <silent> ,rrra aresources path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls, only: %i[] do<return>end<esc>/ChangeThisPls<return>
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
    nnoremap <silent> ,rcsp adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttributes)<return># DeleteThis - insert logic to restrict or clean params if necessary (example, enums will need "to_i" because param will be string but assign_attributes needs integer)<return><backspace><backspace>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttributes\\|DeleteThis<return>
    " Ruby Controller Strong Params full
    nnoremap <silent> ,rcsP adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttribute,<return>ChangeArrayAttribute: [],<return>ChangeChildName: [:ChangeAttribute],<return>ChangeChildrenName: [ChangeChildName: [:ChangeAttribute]])<return>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttribute\\|ChangeArrayAttribute\\|ChangeChildrenName\\|ChangeChildName<return>
    " Ruby Controller Cancancan authorize Model based
    nnoremap <silent> ,rccm aauthorize!(:ChangeAbility, @ChangeObject)<esc>/ChangeAbility\\|ChangeObject<return>
    " Ruby Controller Cancancan authorize Non-model based (feature specific)
    nnoremap <silent> ,rccn aauthorize!(:ChangeAbility, :ChangeControllerOrFeature)<esc>/ChangeAbility\\|ChangeControllerOrFeature<return>
    " Ruby Controller Accessible By
    nnoremap <silent> ,rcab aChangeModel.accessible_by(current_ability, :ChangeAbility)<esc>/ChangeModel\\|ChangeAbility<enter>
    " Ruby Controller Accessible By full
    nnoremap <silent> ,rcaB a@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeAbility).search(params[:ChangeLoads_search]).index_scope)<esc>/ChangeLoads\\|ChangeModel\\|ChangeAbility<enter>
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
    nnoremap <silent> ,rcbt :read ../templates/controllers/base_template_controller.rb<return>ggdd/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeHelpers<return>
    nnoremap <silent> ,rcba :read ../templates/controllers/base_ajax_controller.rb<return>ggdd/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeTemplateController<return>
    " Ruby Controllers Index Base
    nnoremap <silent> ,rcib :read ../templates/controllers/actions/index_base.rb<return>/ChangeLoads\\|ChangeModel\\|ChangeAbility\\|ChangeControllerOrFeature\\|DeleteThis<return>
    " Ruby Controllers Index with Search
    nnoremap <silent> ,rcis :read ../templates/controllers/actions/index_with_search.rb<return>/ChangeLoads\\|ChangeModel\\|ChangeAbility\\|ChangeControllerOrFeature\\|DeleteThis<return>
    " Ruby Controllers Index with Filters
    nnoremap <silent> ,rcif :read ../templates/controllers/actions/index_with_filters.rb<return>/ChangeAbility\\|ChangeControllerOrFeature\\|ChangeLoads\\|DeleteThis\\|ChangeModules\\|ChangeController\\|ChangeArgsWithParamsAndOftenCurrentAbility<return>
    " Ruby Controllers Show Base
    nmap <silent> ,rcsb :read ../templates/controllers/actions/show_base.rb<return>,mmrcsb_search
    nnoremap <silent> ,mmrcsb_search /ChangeLoad\\|ChangeModel\\|DeleteThis<return>
    " Ruby Controllers Show Tab Router
    nnoremap <silent> ,rcsr :read ../templates/controllers/actions/show_router.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeUrl\\|DeleteThis<return>
    " Ruby Controllers New Base
    nmap <silent> ,rcnb ,rcsb/show<return>cgnnew<esc>,mmrcsb_search
    " Ruby Controllers Create Ajax
    nnoremap <silent> ,rcca :read ../templates/controllers/actions/create_ajax.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeObject\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeUrlHelper\\|ChangeTemplate<return>
    " Ruby Controllers Create Html
    nnoremap <silent> ,rcch :read ../templates/controllers/actions/create_html.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>
    " Ruby Controllers Edit Base
    nmap <silent> ,rceb ,rcsb/show<return>cgnedit<esc>,mmrcsb_search
    " Ruby Controllers Update Ajax
    nmap <silent> ,rcua :read ../templates/controllers/actions/update_ajax.rb<return>,rcu_search
    nnoremap  <silent> ,rcu_search /ChangeLoad\\|ChangeModel\\|ChangeAbility\\|DeleteThis\\|ChangeUrl\\|ChangeTemplate<return>
    " Ruby Controllers Update Html
    nmap <silent> ,rcuh :read ../templates/controllers/actions/update_html.rb<return>,rcu_search
    " Ruby Controllers Destroy Atml
    nnoremap <silent> ,rcdh :read ../templates/controllers/actions/destroy_html.rb<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
    " Ruby Controllers Destroy Ajax
    nnoremap <silent> ,rcda :read ../templates/controllers/actions/destroy_ajax.rb<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
    " Ruby Controllers FLash
    nnoremap <silent> ,rcfl aflash[:ChangeFlashType] = ChangeMessage<esc>/ChangeFlashType\\|ChangeMessage<return>
    " Ruby Controllers Flash Success
    nnoremap <silent> ,rcfs aflash[:success] = ChangeMessage<esc>/ChangeMessage<return>
    " Ruby Controllers Flash Info
    nnoremap <silent> ,rcfi aflash[:info] = ChangeMessage<esc>/ChangeMessage<return>
    " Ruby Controllers Flash Danger
    nnoremap <silent> ,rcfd aflash[:danger] = ChangeMessage<esc>/ChangeMessage<return>
    " Ruby Controllers Flash Danger
    nnoremap <silent> ,rcfD aflash[:danger] = "ChangeMessage because of the following errors: #{ChangeObject.errors.map { \|error\| error.message[0].capitalize + error.message[1..] }.join('; ')}."<esc>/ChangeMessage\\|ChangeObject<return>

  " Ruby Helpers
    " Ruby Helpers BAse
    nnoremap <silent> ,rhba :read ../templates/helpers/base_helper.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Helpers Options for Select
    nnoremap <silent> ,rhos :read ../templates/helpers/options_for_select/base_options.rb<return>ggdd/ChangeThisPls<return>
    " Ruby Helpers Grouped Options for select
    nnoremap <silent> ,rhgo :read ../templates/helpers/options_for_select/grouped_options.rb<return>ggdd/ChangeThisPls<return>

  " Ruby Tasks
    " Ruby Tasks BAse
    nmap <silent> ,rtba :read ../templates/tasks/base.rake<return>ggdd/insert first task<return>dd<up>,rttb
    " Ruby Tasks Task Base
    nmap <silent> ,rttb :read ../templates/tasks/task_base.rake<return>/ChangeApp\\|ChangeTaskType\\|ChangeCategory\\|ChangeDescription\\|ChangeTaskName\\|ChangeTask1\\|ChangeTask2\\|ChangeTask3\\|DeleteThis\\|ChangeMessage<return>
    " Ruby Tasks Date Helper
    nnoremap <silent> ,rtdh :read ../templates/tasks/date_helper.rake<return>/DeleteThis<return>
    " Ruby Tasks Repeat  Helper
    nnoremap <silent> ,rtrb :read ../templates/tasks/repeat_block.rake<return>/DeleteThis<return>

  " Ruby Jobs
    " Ruby Jobs BAse
    nmap <silent> ,rjba :read ../templates/jobs/base.rb<return>/DeleteThis\\|ChangeArguments\\|ChangeObject\\|ChangeModel\\|ChangeAttribute<return>

  " Ruby Mailers
    " Ruby Mailers BAse
    nmap <silent> ,rMba :read ../templates/mailers/base.rb<return>/@to_user\\|ChangeObject\\|ChangeModel\\|ChangeId\\|ChangeVariable\\|ChangeOption\\|DeleteThis\\|ChangeGuardLogic\\|ChangeToEmail\\|ChangeFromEmail\\|ChangeSubject<return>
    " Ruby Mailers Html Email
    nmap <silent> ,rMhe :read ../templates/mailers/html_email.html.erb<return>ggdd/DeleteThis\\|ChangeUrl\\|ChangeEmail<return>
    " Ruby Mailers Deliver Later
    nnoremap <silent> ,rMdl aChangeMailerMailer.ChangeEmail_email(ChangeArgs).deliver_later<esc>/ChangeMailer\\|ChangeEmail\\|ChangeArgs<return>

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
    " Stylesheet Base Icon Options
    nnoremap <silent> ,sbio amdi-edit mdi-delete mdi-more mdi-plus-circle-o mdi-check mdi-info-outline mdi-alert-triangle mdi-close-circle-o mdi-close mdi-plus
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
    
