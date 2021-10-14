" Html Show edit swap
  " Html Show edit swap ASsets
  nnoremap <silent> ,hsas a<% add_javascript_packs('lib/show_edit_swap') %><return><return><%= content_for :stylesheets do %><return><%= stylesheet_link_tag('lib/show_edit_swap') %><return><% end %><return><esc>
  " Html Show edit swap BAse
  nnoremap <silent> ,hsba a<div id="ChangeSesId-ses-show"><return><%= render('ChangePath/show') %><return></div><return><return><div id="ChangeSesId-ses-edit"><return><%= render('ChangePath/edit') %><return></div><esc>/ChangeSesId\\|ChangePath<return>
  " Html Show edit swap Base New
  nnoremap <silent> ,hsbn a<div id="ChangeSesId-ses-new-show"><return><%= render('ChangePath/show_new') %><return></div><return><return><div id="ChangeSesId-new-ses-edit"><return><%= render('ChangePath/edit_new') %><return></div><esc>/ChangeSesId\\|ChangePath<return>
  " Html Show edit swap Edit button - Button
  nnoremap <silent> ,hseb a<a class="btn btn-primary ChangeSesId-ses-edit-button">ChangeDisplay</a><esc>/ChangeSesId\\|ChangeDisplay<return>
  " Html Show edit swap Edit button - Icon
  nnoremap <silent> ,hsei a<a class="no-href-icon px-3 fs-4 text-primary mdi mdi-edit ChangeSesId-ses-edit-button"></a><esc>/ChangeSesId<return>
  " Html Show edit swap Edit button - Link
  nnoremap <silent> ,hsel a<a class="no-href-link ChangeSesId-ses-edit-button">ChangeDisplay</a><esc>/ChangeSesId\\|ChangeDisplay<return>
  
" Html Show
  " Html Show Left Label wrapper
  nmap <silent> ,hsll a<div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group left-label col-12"><return><%= label_tag(:ChangeAttribute, 'ChangeDisplay:', class: 'col-form-label') %><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="form-row"><return><%#<delete> DeleteThis - insert Html Show Group %><return></div><return></div><return></div><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay\\|DeleteThis<return>
  " Html Top Label (for top label)
  nmap <silent> ,hstl a<div class="form-row"><return><%#<delete> DeleteThis - insert Show Group %><return></div><esc>/DeleteThis<return>
  " Html Show ROw
  nmap <silent> ,hsro a<div class="form-row"><return></div><esc>,,O
  " Html Show Group 1
  nmap <silent> ,hsg1 a<div class="form-group col-12"><return><%#<delete> DeleteThis: insert label tag if top label (,hflt) %><return><esc>,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return>
  " Html Show Group 2
  nmap <silent> ,hsg2 a<div class="form-group col-12 col-sm-6"><return><%#<delete> DeleteThis: insert label tag if top label (,hflt) %><esc>,,o,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yP
  " Html Show Group 3
  nmap <silent> ,hsg3 a<div class="form-group col-12 col-sm-4"><return><%#<delete> DeleteThis: insert label tag if top label (,hflt) %><esc>,,o,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yPP
  " Html Show Group 4
  nmap <silent> ,hsg4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><%#<delete> DeleteThis: insert label tag if top label (,hflt) %><esc>,,o,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yPPP
  " Html Show Simple Container
  nnoremap <silent> ,hssc a<div class="sse">ChangeDisplay</div><esc>/ChangeDisplay<return>

" Html Form
  " Html Form BAse
  nnoremap <silent> ,hfba a<%= form_with(model: ChangeObject, scope: 'ChangeScope', url: ChangeUrl_path, method: :ChangeHTMLMethod) do \|ChangeForm_form\| %><return><return><return><%# DeleteThis - insert hidden fields here if necessary %><return><%# DeleteThis - insert label type (or fields for if necessary) %><return><%# DeleteThis - insert form buttons %><return><return><% end %><esc>/ChangeObject\\|ChangeScope\\|ChangeUrl\\|ChangeHTMLMethod\\|ChangeForm\\|DeleteThis<return>
  " Html Form ERrors
  nnoremap <silent> ,hfer a<div id="ChangeId_errors"><return><%# DeleteThis - if using a single error message for repeat block of many objects with ajax form, remove render from html and fill div contents with errors partial on ajax instead %><return><%= render('shared/errors', object: ChangeObject) %><return></div><esc>/ChangeId\\|DeleteThis\\|ChangeObject<return>
  " Html Form Full Errors
  nnoremap <silent> ,hffe a<%= render('shared/full_errors', errors: ChangeThisPls.errors.messages) %><esc>/ChangeThisPls<return>
  " Html Form WIth
  nnoremap <silent> ,hfwi a<%= form_with(model: ChangeThisPls, scope: 'ChangeThisPls', url: ChangeThisPls, method: :ChangeThisPls) do \|ChangeThisPls_form\| %><esc>o<% end %><esc>/ChangeThisPls<return>
  " Html Form Single Item
  nnoremap <silent> ,hfsi a<%# DeleteThis - options for errors: 1. as part of partial (shown below and may require "d-flex align-items-start" in parent of repeat block if there is one because when errors are rendered, div with errors will be taller than siblings; aligning start - ie top - fixes this); 2. in generic ses external (id="ses-external-errors"); 3. in specific ses external (id="ChangeSesId-external-errors"); see ses file for more details %><return><%= form_with(model: ChangeObject, scope: 'ChangeScope', url: ChangePath_path, method: :ChangeMethod) do \|ChangeForm_form\| %><return><div class="d-flex align-items-center"><return><%# DeleteThis - use text feild or change input type. NOTE: If input is repeated in loop with left and right siblings, may be necessary to set input width (see note on size attribute) and height (see note on style attribute) %><return><%= ChangeForm_form.text_field(<return>  :ChangeAttribute,<return>value: ChangeValue,<return># DeleteThis - if has left and right siblings, may need to set input witdh by setting size (or possibely by setting style / width); otherwise input width will default to 100%; goal is to have left and right siblings, which cannot happen if width is 100%<return><backspace><backspace>size: ChangeObject.ChangeAttribute.length,<return>class: 'form-control',<return># DeleteThis - if has left and right siblings, may need to set height; goal is to make the ses edit partial the same height as the ses show partials of siblings to left and right<return><backspace><backspace>style: 'height: 26px !important; padding: 3px 6px;',<return>autofocus: true,<return>autocomplete: 'ChangeAutocomplete',<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>maxlength: '255'<return>) %><return>  <a class="pl-3 pr-2 fs-4 c-pointer text-secondary mdi mdi-close-circle-o ChangeSesId-cancel-button"></a><return><button class="pl-2 pr-3 fs-4 btn-no-background text-primary mdi mdi-check-circle do-not-disable"></button><return></div><return><%= render('shared/inline_errors', errors: ChangeObject.errors.messages[:ChangeAttribute]) %><return><% end %><return><esc>/DeleteThis\\|ChangeObject\\|ChangeScope\\|ChangePath\\|ChangeMethod\\|ChangeForm\\|text_field\\|ChangeAttribute\\|ChangeValue\\|ChangeAutocomplete\\|ChangePlaceholder\\|255\\|ChangeSesId<return>
  " Html Form non-standard forms Array Simple
  nnoremap <silent> ,hfas :read ../templates/views/forms/non_standard_forms/array_simple.html.erb<return>/ChangeModel\\|ChangeUrl\\|ChangeMethod\\|ChangeParentForm\\|ChangeObjects\\|ChangeObject\\|ChangeAttributes\\|ChangeAttribute\\|ReplaceThis\\|DeleteThis:<return>
  " Html Form non-standard forms Array Hash
  nnoremap <silent> ,hfah :read ../templates/views/forms/non_standard_forms/array_hash.html.erb<return>/ChangeModel\\|ChangeScop\\|ChangeUrl\\|ChangeMethod\\|ChangeParentForm\\|ChangeObjects\\|ChangeObject\\|ReplaceThis\\|DeleteThis:\\|ChangeAttribute<return>
  " Html Form Fields For
  nnoremap <silent> ,hfff a<%= ChangeThisPls_form.fields_for(:ChangeScope, ChangeModel) do \|ChangeThisPls_form\| %><return><% end %><esc>/ChangeThisPls\\|ChangeScope\\|ChangeModel<return>
  " Html Form Left Label
  nmap <silent> ,hfll a<%#<delete> Left label for ChangeAttribute %><return><div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group left-label col-12"><return><%= ChangeThisPls_form.label(:ChangeAttribute, 'ChangeDisplay:', class: 'col-form-label') %><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="form-row"><return><%#<delete> DeleteThis - insert Html Form Group %><return></div><return></div><return></div><return><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay\\|DeleteThis<return>
  " Html Form Top Label
  nmap <silent> ,hftl a<%#<delete> Top label for ChangeAttribute %><return><div class="form-row mb-2"><return><%#<delete> DeleteThis - insert Html Form Group %><return></div><return><esc>/ChangeAttribute\\|DeleteThis<return>
  " Html Form Top label Modal
  nmap <silent> ,hftm a<%#<delete> Top label modal for ChangeAttribute %><return><div class="form-row mb-2 d-flex justify-content-center"><return><div class="form-group-modal"><return><%#<delete> DeleteThis - insert Html Form Group %><return></div><return></div><return><esc>/ChangeAttribute\\|DeleteThis<return>
  " Html Form ROw
  nmap <silent> ,hfro a<div class="form-row"><return><%#<delete> DeleteThis - insert Html Form Group %><return></div><esc>/DeleteThis<return>
  " Html Form Group 1
  nnoremap <silent> ,hfg1 a<div class="form-group col-12"><return><esc>:call HtmlFormGroupContents()<return>o</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return>
  " Html Form Group 2
  nnoremap <silent> ,hfg2 a<div class="form-group col-12 col-sm-6"><return><esc>:call HtmlFormGroupContents()<return>o</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yP
  " Html Form Group 3
  nnoremap <silent> ,hfg3 a<div class="form-group col-12 col-sm-4"><return><esc>:call HtmlFormGroupContents()<return>o</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yPP
  " Html Form Group 4
  nnoremap <silent> ,hfg4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><esc>:call HtmlFormGroupContents()<return>o</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yPPP
  function! HtmlFormGroupContents()
    execute "normal! a<%# DeleteThis - insert label if top label (,hfla) %>\<return><%# DeleteThis - insert HTML Form Input %>\<return>\<esc>:call HtmlFormInlineErrors()\<return>"
  endfunction
  " Html Form LAbel
  nnoremap <silent> ,hfla a<%= ChangeThisPls_form.label(:ChangeAttribute, 'ChangeDisplay', class: 'col-form-label') %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
  " Html Form Label Block
  nnoremap <silent> ,hflb a<%= ChangeThisPls_form.label(:ChangeAttribute, class: 'col-form-label') do %>ChangeDisplay<% end %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
  " Html Form Label Tag
  nnoremap <silent> ,hflt a<%= label_tag(:ChangeAttribute, 'ChangeDisplay', class: 'col-form-label') %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
  " Html Form Inline Errors
  nnoremap <silent> ,hfie :call HtmlFormInlineErrors()<return>/ChangeObject\\|ChangeAttribute<return>
  function! HtmlFormInlineErrors()
    execute "normal! a<%= render('shared/inline_errors', errors: ChangeObject.errors.messages[:ChangeAttribute]) %>"
  endfunction
  " Html Form Buttons (cancel & submit) - Buttons 
  nnoremap <silent> ,hfbb a<%# Form buttons %><return><div class="d-flex justify-content-end"><return><a class="btn btn-secondary mr-3 ChangeSesId-ses-cancel-button">Cancel</a><return><%= ChangeForm_form.submit 'ChangeSubmit', class: "btn btn-primary" %><return></div><esc>/ChangeSesId\\|ChangeForm\\|ChangeSubmit<return>
  " Html Form Buttons (cancel & submit) - Icons
  nnoremap <silent> ,hfbi a<%# Form buttons - icons %><return><div class="d-flex align-items-center justify-content-center"><return><a class="px-3 fs-4 c-pointer text-secondary mdi mdi-close-circle-o ChangeSesId-ses-cancel-button"></a><return><button class="px-3 fs-4 btn-no-background text-primary mdi mdi-check-circle do-not-disable"></button><return></div><esc>/ChangeSesId<return>
  " Html Form Buttons (cancel & submit) - Left label (usually not necessary
  " but can be helpful if you want buttons to align not at end)
  nnoremap <silent> ,hfbl a<%# Left label cancel and submit buttons %><div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group left-label col-12"><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="d-flex justify-content-end"><return><a class="btn btn-secondary mr-3 ChangeSesId-ses-cancel-button">Cancel</a><return><%= ChangeForm_form.submit "Save", class: "btn btn-primary" %><return></div><return></div><return></div><return><esc>/ChangeForm\\|ChangeSesId<return>
  " Html Form Buttons (cancel & submit) - Modal
  nnoremap <silent> ,hfbm a<%# Form buttons - for modal %><return><div class="form-row mb-2 d-flex justify-content-center"><return><div class="form-group-modal mt-6 px-3 d-flex justify-content-between"><return><button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button><return><%= ChangeForm_form.submit 'ChangeSubmit', class: 'btn btn-primary' %><return></div><return></div><esc>/ChangeForm\\|ChangeSubmit<return>

" Html Inputs
  " Htmo Input Main Attrubutes
  function! HtmlInputMainAttributes()
    execute "normal! avalue: ChangeObject.ChangeAttribute, # text Specifies the intial value for the control. If type = \"checkbox\" or type = \"radio\" this attribute is required. Not necessary for select.\<return>placeholder: 'ChangeValue', # html-5 text Specifies a short hint that describes the expected value.\<return>required: ChangeValue, # html-5 required Specifies that an input field must be filled out before submitting the form.\<return>alt: ChangeValue, # text This specifies text to be used in case the browser/user agent can't render the input control.\<return>autocomplete: ChangeValue, # html-5 on off Specifies for enabling or disabling of autocomplete in INPUT element.\<return>autofocus: ChangeValue, # html-5 autofocus pecifies that INPUT element should automatically get focus when the page loads.\<return>checked: ChangeValue, # checked If type = \"radio\" or type = \"checkbox\" it will already be selected when the page loads.\<return>max: ChangeValue, # html-5 autofocus Specifies the maximum value.\<return>maxlength: ChangeValue, # number (set to 255 for strings) Defines the maximum number of characters allowed in a text field.\<return>min: ChangeValue, # html-5 number Specifies the minimum value.\<return>minlength: 'ChangeMinLength', # number Defines the minimum number of characters allowed in a text field.\<return>multiple: ChangeValue, # html-5 multiple Specifies that a user can enter multiple values.\<return>size: ChangeValue, # number Specifies the width of the control. If type = \"text\" or type = \"password\" this refers to the width in characters. Otherwise it's in pixels.\<return>step: ChangeValue, # html-5 number Specifies the legal number intervals for an input field"
  endfunction
  " Htmo form Input ATtrubutes (all others)
  nnoremap <silent> ,hiaT aaccept: ChangeValue, # content types Specifies a comma-separated list of content types that the server accepts.<return>align: ChangeValue, # left right top middle bottom Deprecated − Defines the alignment of content<return>disabled: ChangeValue, # disabled Disables the input control. The button won't accept changes from the user. It also cannot receive focus and will be skipped when tabbing.<return>form: ChangeValue, # html-5 form_id Specifies one or more forms<return>formaction: ChangeValue, # html-5 URL Specifies the URL of the file that will process the input control when the form is submitted<return>formenctypeh: ChangeValue, #tml-5 application/x-www-form-urlencoded multipart/form-data text/plain Specifies how the form-data should be encoded when submitting it to the serve<return>formmethod: ChangeValue, #  html-5 post get Defines the HTTP method for sending data to the action URL<return>formnovalidate: ChangeValue, # html-5 formnovalidate Defines that form elements should not be validated when submitted<return>formtarget: ChangeValue, # html-5 _blank _self _parent _top Specifies the target where the response will be display that is received after submitting the form<return>height: ChangeValue, # html-5 pixels Specifies the height<return>list: ChangeValue, # html-5 datalist_id Specifies the <datalist> element that contains pre-defined options for an <input> element<return>name: ChangeValue, # text Assigns a name to the input control.<return>pattern: ChangeValue, # html-5 regexp Specifies a regular expression that an <input> element's value is checked against<return>readonly: ChangeValue, # readonly Sets the input control to read-only. It won't allow the user to change the value. The control however, can receive focus and are included when tabbing through the form controls.<return>src: ChangeValue, # URL Defines the URL of the image to display. Used only for type = "image".<return>type: ChangeValue, # button checkbox color date datetime datetime-local email file hidden image month number password radio range reset search submit tel text time url week Specifies the type of control.<return>width: ChangeValue, # html-5 pixels Specifies the width<esc>/ChangeValue<return>
  function! HtmlInputSearch()
    let @/ = "ChangeFormObject\\|ChangeForm\\|ChangeObject\\|ChangeAttribute\\|ChangeValue\\|ChangeOptionsList\\|DeleteThis\\|MakeTrueOrRemoveThisLine\\|ChangeOptionObjects\\|ChangeOptionObject\\|ChangeDisplay"
    normal! n
  endfunction
  " Html Input HIdden field
  nnoremap <silent> ,hihf a<%= ChangeThisPls_form.hidden_field(:ChangeThisPls, value: ChangeThisPls) %><esc>/ChangeThisPls<return>
  " Html Input Hidden field Tag
  nnoremap <silent> ,hiht a<%= hidden_field_tag(:ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
  " Html Input Text Field
  nnoremap <silent> ,hitf a<%= ChangeForm_form.text_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Input Text Area
  nnoremap <silent> ,hita a<%= ChangeForm_form.text_area(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Input Number Field
  nnoremap <silent> ,hinf a<%= ChangeForm_form.number_field(<return>  :ChangeAttribute,<return>value: ChangeValue,<return>class: 'form-control',<return>autofocus: true,<return>autocomplete: 'ChangeAutocomplete',<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>size: ChangeSize,<return>min: ChangeMin,<return>max: ChangeMax,<return>step: ChangeStep,<return>) %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue\\|ChangeAutocomplete\\|ChangePlaceholder\\|ChangeSize\\|ChangeMin\\|ChangeMax\\|ChangeStep<return>
  " Html Input Rich Text
  nnoremap <silent> ,hirt a<%= ChangeThisPls_form.rich_text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
  " Html Input Email Field
  nnoremap <silent> ,hief a<%= ChangeForm_form.email_field(<return>  :ChangeAttribute,<return>value: ChangeValue,<return>class: 'form-control',<return>autofocus: true,<return>autocomplete: 'email',<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>size: 'ChangeSize',<return>maxlength: 'ChangeMaxLength'<return>) %><esc>/ChangeForm\\|ChangeAttribute\\|ChangeValue\\|'email'\\|ChangePlaceholder\\|ChangeSize\\|ChangeMaxLength<return>
  " Html Input Checkbox Group
  nnoremap <silent> ,hicg a<div class="pt-1"><return><%# DeleteThis - default is stacked checkboxes. To make inline, add class "d-flex" to div above %><return><space><backspace><esc>:call HtmlInputCheckbox()<return>`qo<space><backspace><esc>:call HtmlInputCheckbox()<return>`qo</div><esc>n
  " Html Input CheckBox
  nnoremap <silent> ,hicb :call HtmlInputCheckbox()<return>
  function! HtmlInputCheckbox()
    execute "normal! a<div class=\"pr-2 custom-control custom-checkbox\">\<return><%= ChangeForm_form.check_box(:ChangeAttribute, class: 'custom-control-input') %>\<return><%= ChangeForm_form.label(:ChangeAttribute, 'ChangeDisplay', class: \"custom-control-label form-text2\") %>\<return><%# DeleteThis - for blank label, make label above a block with a blank space (\" \") between the do and end %>\<return></div>\<esc>mq/ChangeForm\\|ChangeAttribute\\|ChangeDisplay\\|DeleteThis\<return>"
  endfunction
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
  nnoremap <silent> ,hipf a<%= ChangeForm_form.password_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return>autofocus: true,<return>placeholder: 'ChangePlaceholder',<return>required: true,<return>size: ChangeSize,<return>minlength: ChangeMinLength) %><esc>/ChangeAttribute\\|ChangeForm\\|ChangePlaceholder\\|ChangeSize\\|ChangeMinLength<return>
  " Html Input Password Confirmation
  nnoremap <silent> ,hipc a<%= ChangeThisPls_form.password_field(:password_confirmation, class: 'form-control') %><esc>/ChangeThisPls<return>
  function HtmlInputSelectValueNote()
    execute "normal! a# DeleteThis - even if object.attribute has a value, the selected value must be set manually.\<return>Typically options_for_select is the best option (,hios)\<return>\<backspace>\<backspace>"
  endfunction
  function! HtmlInputSelectIncludeBlankNote()
    execute "normal! a# DeleteThis - include_blank is best when a selection is not requried and can be left blank\<return>will add an option to the beginning of the list with value=\"\" regardless of the value of\<return>object.attribute\<return>\<backspace>\<backspace>"
  endfunction
  function! HtmlInputSelectPromptNote()
    execute "normal! a# DeleteThis - prompt is best when a selection is required and the user needs to be prompted\<return>to make a selection. If object.attribute is nil, prompt will add an option to the beginning\<return>of the list with value=\"\". However, if object.attribute has a value, then prompt will not\<return>add an option to the beginning. If object.attribute is nil and then a selection is made,\<return>the prompt will remain. The prompt is only removed if the object is saved and the select\<return>element is re-rendered (via ajax or re-reloading the page)\<return>\<backspace>\<backspace>"
  endfunction
  function! HtmlInputSelectDefaultNote()
    execute "normal! a# DeleteThis - for select with default, neither include_blank nor prompt is added. This means\<return>the only options that will appear will be the options from the options list. If a value\<return>is selected then that value will be selected when the page loads. If no value is selected,\<return>then the first option from the options list will be selected as the \"default\" option\<return>\<backspace>\<backspace>"
  endfunction
  function! HtmlInputSelectRequiredNote()
    execute "normal! a# DeleteThis - add or remove \"required: true\" based on notes above\<return>DeleteThis - for more details on required, see note below:\<return>\<tab>required on HTML select elements will error unless the first opion has value=\"\".\<return>The rails select helper adjust for this in several ways:\<return>\<tab>1) if neither include_blank or prompt options are passed, then adding required will also add an\<return>empty option as the first option with a value="" and will make the select required\<return>2) if include_blank is added, rails will add the first option with whatever display is selected\<return>and will make the select required\<return>3) if prompt is selected and the object has a value of nil for the attribute, then rails will add\<return>a first option with whatever display is selected and will make the select required\<return>4) if prompt is selected and the object has a value for the attribute, then rails will ignore the\<return>required attribute (because in this case, there is no blank option and therefore the select is\<return>effectively required. However, it would error if the required attribute was actually included\<return>because for html select to have the required attribute, the first option must have a value of nil)\<return>\<backspace>\<backspace>\<backspace>\<backspace>"
  endfunction
  " Html Input Select Optional
  nnoremap <silent> ,hiso a<%= ChangeForm_form.select(<return>  :ChangeAttribute,<return>ChangeOptionsList,<return><space><backspace><esc>:call HtmlInputSelectValueNote()<return>a{ include_blank: 'Select' },<return><space><backspace><esc>:call HtmlInputSelectIncludeBlankNote()<return>a{<return><tab>class: 'form-control',<return>autofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>})<return>%><esc>:call HtmlInputSearch()<return>
  " Html Input Select Required
  nnoremap <silent> ,hisr a<%= ChangeForm_form.select(<return>  :ChangeAttribute,<return>ChangeOptionsList,<return><space><backspace><esc>:call HtmlInputSelectValueNote()<return>a{ prompt: 'Select' },<return><space><backspace><esc>:call HtmlInputSelectPromptNote()<return>a{<return><tab>class: 'form-control',<return>required: true,<return>autofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>})<return>%><esc>:call HtmlInputSearch()<return>
  " Html Input Select Default
  nnoremap <silent> ,hisd a<%= ChangeForm_form.select(<return>  :ChangeAttribute,<return>ChangeOptionsList,<return><space><backspace><esc>:call HtmlInputSelectValueNote()<return>a{},<return><space><backspace><esc>:call HtmlInputSelectDefaultNote()<return>a{<return><tab>class: 'form-control',<return>autofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>})<return>%><esc>:call HtmlInputSearch()<return>
  " Html Input Select Block
  nnoremap <silent> ,hisb a<%= ChangeForm_form.select(<return>  :ChangeAttribute,<return>[],<return>{ prompt: 'Select' include_blank: 'Select' },<return># DeleteThis - set up select:<return><tab>1) if select is optional: use include_blank above and remove "required: true" below<return>2) if select is requried and the user should be prompted to make a selection: use prompt<return>above and add "required: true" below<return>3) if select is requried with a default selection picked (rather than a prompt): leave<return>above blank (do not use include_blank nor prompt above) and remove "required: true" below<return><backspace>DeleteThis - see notes below for more details on prompt and include_blank<return><backspace><backspace><esc>:call HtmlInputSelectPromptNote()<return>:call HtmlInputSelectIncludeBlankNote()<return>a{<return><tab>class: 'form-control',<return>required: MakeTrueOrRemoveThisLine<return><space><backspace><esc>:call HtmlInputSelectRequiredNote()<return>aautofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>}) do<return>%><return><% ChangeOptionObjects.each do \|ChangeOptionObject\| %><esc>V2><esc>o<option value="<%= ChangeOptionObject.ChangeValue %>"<%= " selected=\"true\"" if ChangeOptionObject.ChangeValue == ChangeFormObject.ChangeValue %>><%= ChangeOptionObject.ChangeDisplay %></option><return><% end %><return><% end %><esc>:call HtmlInputSearch()<return>
  " Html Input select Options for select
  nnoremap <silent> ,hios aoptions_for_select(ChangeOptionsListDisplayFirstValueSecond, ChangeSelectedOptionOrOptionsIfMultiple)<esc>/ChangeOptionsListDisplayFirstValueSecond\\|ChangeSelectedOptionOrOptionsIfMultiple<return>
  " Html Input select Options for select for Enum
  nnoremap <silent> ,hioe aoptions_for_select(ChangeClass.ChangeAttributes, ChangeObject.ChangeAttribute_for_database)<esc>/ChangeClass\\|ChangeAttributes\\|ChangeObject\\|ChangeAttribute<return>
  " Html Input Grouped options for select
  nnoremap <silent> ,higs agrouped_options_for_select(ChangeOptionsListDisplayFirstValueSecond, ChangeSelectedOptionOrOptionsIfMultiple)<esc>/ChangeOptionsListDisplayFirstValueSecond\\|ChangeSelectedOptionOrOptionsIfMultiple<return>
  " Html Input Select Multiple
  nnoremap <silent> ,hism a<%= ChangeForm_form.select(<return>  :ChangeAttribute,<return>ChangeOptionsList,<return><space><backspace><esc>:call HtmlInputSelectValueNote()<return>a{ include_hidden: true },<return><space><backspace><esc>:call HtmlInputSelectMultipleOptionsNote()<return>a{<return><tab>class: 'form-control',<return>multiple: true,<return>required: MakeTrueOrRemoveThisLine,<return>autofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>})<return>%><esc>:call HtmlInputSearch()<return>
  function! HtmlInputSelectMultipleOptionsNote()
    execute "normal! a# DeleteThis - it's typically best to set include_hidden to false BUT MAKE SURE in the controller\<return>action to include logic when nothing is selected because you can have nil OR NoMethodError.\<return>Typically you will need something like \"if params[:scope] && params[:scope][:attribute]\"\<return>See notes below regarding include_hidden:\<return>  include_hidden only applies to select multiple.\<return>You need to understand how include_hidden works and how it impacts params.\<return>You also need to know how you want params to work in your controller action.\<return>include_hidden defaults to true (meaning if you want to set it to true, you can simply remove\<return>it from the options list)\<return>When set to true, rails adds a hidden, selected option with value \"\".\<return>When set to false, it will not include this hidden option.\<return>The idea is that if nothing is selected, then the param will still show up in the controller.\<return>So if you have a form with scope \"user\" and a select multiple for attribute \"friend_ids\",\<return>then this is how params will work in the controller:\<return>  if include_hidden is set to true:\<return>  If nothing is seleted: params[:user][:friend_ids] will return [\"\"]. This is nice because\<return>otherwise params[:user][:friend_ids] could be nil, or if params[:user] is nil, then\<return>params[:user][:friend_ids] will error\<return>If something is selected: params[:user][:friend_ids] will return [\"\", \"1\"] which is\<return>annoying because now you have a value of \"\" in the list which can cause SQL queries\<return>to error\<return>\<backspace>If include_hidden is set to false and something is selected it will function as expceted:\<return>  params[:user][:friend_ids] will return [\"1\"]\<return>\<backspace>If include_hidden is set to false and nothing is selected:\<return>  If there are additional inputs on the form other than friend_ids:\<return>  params[:user][:friend_ids] will return nil so you may need\<return>\"if params[:user][:friend_ids]\" in the controller\<return>\<backspace>If friend_ids is the only input on the form: params[:user] will be nil and\<return>  params[:user][:friend_ids] will error with NoMethodError for NilClass so you may need\<return>\"if params[:user] && params[:user][:friend_ids]\" in the controller\<return>\<backspace>\<backspace>\<backspace>After understanding how include_hidden works and how you want params to work in your\<return>controller, choose whether or not to set include_hidden to true or false.\<return>\<backspace>DeleteThis - regarding include_blank and prompt:\<return>  Do not use include_blank or prompt on select multiple. Functionaly they work the same as\<return>on select single (they add a first option with value=\"\") but this is not necessary on\<return>select multiple. On select single, in order to select nothing, you have to select an option\<return>with value=\"\" (which is why include_blank and prompt exist). But on select multiple, in order\<return>to select nothing, you simply de-select all the options. In fact, having an option with\<return>value=\"\" will break the required attribute on select multiple (if it's included) because\<return>when an option with value=\"\" is slected on select multiple, the select thinks that an\<return>option has been selected which technically it has, but from business logic perspective,\<return>it hasnt, and so the required front end validation will not error when really we would\<return>want it to error. So don't use include_blank or prompt with select multiple.\<return>\<backspace>\<backspace>\<backspace>"
  endfunction
  " Html Input CAlendar
  nnoremap <silent> ,hica a<%= ChangeForm_form.text_field(<return>  :ChangeAttribute,<return>class: 'form-control datetimepicker',<return>value: ChangeObject.ChangeAttribute.try(:strftime, '%A, %B %-d, %Y'),<return>autocomplete: 'off',<return>data: { 'min-view': '2', 'date-format': 'MM d, yyyy' },<return>onclick: "removeInlineCalendarsAfterAjax()",<return><esc>:call HtmlInputMainAttributes()<return>o) %><return><esc>:call HtmlInputCalendarMessage()<return>:call HtmlInputSearch()<return>
  " Html Input CAlendar with button
  nnoremap <silent> ,hicA a<div class="input-group date datetimepicker" data-min-view="2" data-date-format="DD, MM d, yyyy"><return><%= ChangeForm_form.text_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return>value: ChangeObject.ChangeAttribute.try(:strftime, '%A, %B %-d, %Y'),<return>autocomplete: 'off',<return>onclick: "removeInlineCalendarsAfterAjax()",<return><esc>:call HtmlInputMainAttributes()<return>o) %><return><space><space><div class="input-group-append"><return><a class="btn btn-primary cal-button do-not-disable" onclick="removeInlineCalendarsAfterAjax()"><i class="icon-th mdi mdi-calendar"></i></a><return></div><return></div><return><esc> :call HtmlInputCalendarMessage()<return>:call HtmlInputSearch()<return>
  function! HtmlInputCalendarMessage()
    execute "normal! a\<%# DeleteThis - value of nil or if value is excluded, text box will be blank and calendar defaults to today. If a value is included, make sure it is a date, not a date time and include correct strftime %>\<return>\<%# DeleteThis - min-view: 0 is 5 minutes; 1 is hour; 2 is date %>\<return>\<%# DeleteThis - date-format: MM is January; mm is 01; m is 1 (no preceding 0); DD is Monday (day of week); dd is 01 (day of month); d is 1 (no preceding 0) %>\<return>\<%# DeleteThis - see https://xdsoft.net/jqplugins/datetimepicker/ for more options %>"
  endfunction
  " Html Input SUbmit
  nnoremap <silent> ,hisu a<%= ChangeForm_form.submit('ChangeDisplay', class: 'btn btn-ChangeColor') %><esc>/ChangeForm\\|ChangeDisplay\\|ChangeColor<return>
  " Html Input Submit Link
  nnoremap <silent> ,hisl a<%= ChangeForm_form.submit('ChangeDisplay', class: 'btn-link') %><esc>/ChangeForm\\|ChangeDisplay<return>
  " Html Form Input Submit with Image
  nnoremap <silent> ,hisi a<%= image_submit_tag('ChangePathAndFileName', alt: 'ChangeAltText', width: 'ChangeWidth', height: 'auto') %><esc>/ChangePathAndFileName\\|ChangeAltText\\|ChangeWidth<return>
  " Html Form CUstom Field
  nnoremap <silent> ,hicu a<%= ChangeThisPls_form.ChangeThisPls(:ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
