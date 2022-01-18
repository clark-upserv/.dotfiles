" Tests Controller BAse
nnoremap <silent> ,tcba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActionDispatch::IntegrationTest<esc>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn<esc>:call TestControllerBase()<return>
function! TestControllerBase()
  execute "normal! /inner_followup\<return>cgninclude Devise::Test::IntegrationHelpers\<return>\<return>setup do\<return>@ChangeUserWithPermission_user = core_users(:ChangeUserWithPermission)\<return>@ChangeObject = ChangeTable(:ChangeFixture)\<return>@dif_account_ChangeObject = ChangeTable(:ChangeFixture)\<return>end\<return>test disclaimer\<esc>/test disclaimer\<return>cgn\<esc>:call TestDisclaimer()\<return>"
  let user_with_permission = input("What is the fixture name for the user with permision (ex \"hr_admin\"): ")
  if user_with_permission != ""
    execute "normal! /ChangeUserWithPermission\<return>cgn" . user_with_permission . "\<esc>n."
  endif 
  let Object = input("What is the name for the main object(ex \"user\"): ")
  if Object != ""
    execute "normal! /ChangeObject\<return>cgn" . Object . "\<esc>n."
  endif 
  let FixtureTable = input("What is the table name for the main object(ex \"core_users\"): ")
  if FixtureTable != ""
    execute "normal! /ChangeTable\<return>cgn" . FixtureTable . "\<esc>n."
  endif 
  let @/ = "DeleteThis\\|ChangeUserWithPermission\\|ChangeObject\\|ChangeTable\\|ChangeFixture"
endfunction

" Tests Controller AUthorization
nnoremap <silent> ,tcau :call IndentTemplate('', 0, 0, '../templates/tests/controller_authorization.rb')<return>/DeleteThis\\|ChangeAction\\|ChangeScope\\|ChangeAttribute\\|ChangeValueForDifferentAccount\\|ChangeValue\\|ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeObject\\|, params: ChangeAction_params\\|ChangeUserWithPermission\\|ChangeInvalidValue<return>

function! TestControllerAuthorization(action)
  " add comment indicating start of tests for action
  execute "normal! a# Tests for " . a:action . " action\<return>\<backspace>\<backspace>\<space>\<backspace>"
  " get details
  if a:action == ''
    let a:action = 'ChangeAction'
  endif
  let has_params = input("Does the " . a:action . " action have params? (y/n): ")
  if index(['index', 'show'], a:action) >= 0
    let html_method = 'get'
  elseif a:action == 'create'
    let html_method = 'post'
  elseif a:action == 'update'
    let html_method = 'patch'
  elseif a:action == 'destroy'
    let html_method = 'delete'
  endif 
  let url_helper = input("What is the url helper excluding arguments and \"_path\" sufffix? (ex. \"core_user\", not \"core_user_path(@user)\"): ")
  if a:action == 'index'
    let object_name = ''
  else
    let object_name = input("What is the name of object?: ")
  endif
  if url_helper == ''
    let url_helper = 'ChangeUrlHelper'
  endif
  let is_ajax = input("Is this an ajax request? (y/n): ")
  
  " add params method
  if has_params == 'y'
    execute "normal! adef " . a:action . "_params\<return>{ 'ChangeScope' => { 'ChangeAttribute' => 'ChangeValue' } }\<return>end\<return>\<esc>0Do\<space>\<backspace>"
  endif
  
  " start authentication test
  execute "normal! atest 'Should not " . a:action . " without authorization' do\<return># not logged in\<return>\<backspace>\<backspace>\<space>\<backspace>"
  " make request while not logged in
  execute "normal! a" . html_method . " " . url_helper . "_path"
  if a:action != 'index'
    execute "normal! a(@" . object_name . ")"
  endif
  if has_params == 'y'
    execute "normal! a, params: " . a:action . "_params"
  endif
  if is_ajax == 'y'
    execute "normal! a, xhr: true"
  endif
  " assert access denied while not logged in
  execute "normal! oassert assigns(:access_denied_not_logged_in)"
  " sign in base user
  execute "normal! o# logged in wihtout access\<return>\<backspace>\<backspace>\<space>\<backspace>sign_in(core_users(:base_user))"
  " make request make request while signed in but without access
  execute "normal! o" . html_method . " " . url_helper . "_path"
  if a:action != 'index'
    execute "normal! a(@" . object_name . ")"
  endif
  if has_params == 'y'
    execute "normal! a, params: " . a:action . "_params"
  endif
  if is_ajax == 'y'
    execute "normal! a, xhr: true"
  endif
  " assert access denied while logged in
  execute "normal! oassert assigns(:access_denied_while_logged_in)"
  " test that user with access cannot access objects for different accounts
  if index(['show', 'update', 'destroy'], a:action) >= 0
    " sign in user with access
    let user_with_permission = input("What is the fixture name for the user with permision (ex \"hr_admin\"): ")
    execute "normal! o# Logged in as " . user_with_permission . " but for " . object_name . " on different account\<return>\<backspace>\<backspace>\<space>\<backspace>sign_in(@" . user_with_permission . ")"
    " make request while logged in but request object on different account
    execute "normal! o" . html_method . " " . url_helper . "_path"
    execute "normal! a(@dif_account_" . object_name . ")"
    if has_params == 'y'
      execute "normal! a, params: " . a:action . "_params"
    endif
    if is_ajax == 'y'
      execute "normal! a, xhr: true"
    endif
    " assert access denied while logged in with access but attempting to
    " access object on different account
    execute "normal! oassert assigns(:access_denied_while_logged_in)"
    " test that object can not be created or updated to be on a different
    " account
    if index(['create', 'update'], a:action) >= 0
      " prep
      let could_create_on_dif_account = input("Is it possible to " . a:action . " " . object_name . " on different account? (y/n): ")
      if could_create_on_dif_account == 'y'
        if a:action == 'update'
          let helper_word = 'to'
        else 
          let helper_word = 'for'
        endif
        execute "normal! o# Logged in as " . user_with_permission . " but attempting to " . a:action . " " . object_name . " " . helper_word . " different account\<return>\<backspace>\<backspace>\<space>\<backspace>"
        execute "normal! ainvalid_" . a:action . "_params = " . a:action . "_params\<return>invalid_" . a:action . "_params['ChangeScope']['ChangeAttribute'] = ChangeInvalidValue"
        " make request to create or update for antoher account
        execute "normal! o" . html_method . " " . url_helper . "_path"
        if a:action != 'index'
          execute "normal! a(@" . object_name . ")"
        endif
        if has_params == 'y'
          execute "normal! a, params: invalid_" . a:action . "_params"
        endif
        if is_ajax == 'y'
          execute "normal! a, xhr: true"
        endif
        " assert access denied while logged in with access but attempting to
        " create or update object for  different account
        execute "normal! oassert assigns(:access_denied_while_logged_in)"
      endif
    endif
  endif
  execute "normal! o# DeleteThis - repeat dif account tests for each user with access AND each variation that could end in object being on different account\<return>\<backspace>\<backspace>end"
  echo 'Follow instructions in text file to finish'
endfunction
" Tests Controller Sortable Table positions
nnoremap <silent> ,tcst :call IndentTemplate('', 1, 0, '../templates/tests/controller_sortable_table_positions.rb')<return>/ChangeUserWithPermission\\|ChangeUser\\|ChangeParent\\|ChangeTable\\|ChangeFixture\\|ChangeChildren\\|ChangeChild\\|ChangeStpId\\|ChangeUrlHelper\\|DeleteThis<return>
" Tests Controller INdex
nnoremap <silent> ,tcin :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_index.rb')<return>/included_not_included<return>nD:call TestIncludedNotIncluded()<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeModel\\|ChangeQuery\\|ChangeLoad\\|ChangeDifAccountObject\\|ChangeFilter\\|ChangeTable\\|ChangeFixture\\|ChangeDescription<return>
" Tests Controller SHow
nnoremap <silent> ,tcsh :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_show.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
" Tests Controller NEw
nnoremap <silent> ,tcne o# DeleteThis - refactor test for show to fit new<return><backspace><backspace><space><backspace><esc>:call IndentTemplate('', 0, 0, '../templates/tests/controller_test_show.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
" Tests Controller CReate
nnoremap <silent> ,tccr :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_create.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeModel\\|ChangePath\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect\\|ChangeObject\\|ChangeChainToCoreAccountId<return>
" Tests Controller EDit
nnoremap <silent> ,tced o# DeleteThis - refactor test for show to fit edit<return><backspace><backspace><space><backspace><esc>:call IndentTemplate('', 0, 0, '../templates/tests/controller_test_show.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
" Tests Controller UPdate
nnoremap <silent> ,tcup :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_update.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangePath\\|ChangeObject\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect<return>
nnoremap <silent> ,tcup :call TestControllerAuthorization('update')<return>

""/DeleteThis\\|ChangeAction\\|ChangeScope\\|ChangeAttribute\\|ChangeValueForDifferentAccount\\|ChangeValue\\|ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeObject\\|, params: ChangeAction_params\\|ChangeUserWithPermission\\|ChangeInvalidValue<return>


"":call IndentTemplate('', 0, 0, '../templates/tests/controller_test_update.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangePath\\|ChangeObject\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect<return>
" Tests Controller DEstroy
nnoremap <silent> ,tcde :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_destroy.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeModel\\|ChangePath\\|ChangeObject\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect<return>
" Tests Controller OTher
nnoremap <silent> ,tcot :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_other.rb')<return>/DeleteThis\\|ChangeAction\\|SuccessOrRedirect\\|ChangeHtmlMethod\\|ChangeTemplate\\|ChangePath\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
" Tests Controller REquest
nnoremap <silent> ,tcre  aChangeHtmlMethod ChangeUrlHelper_path(id: @ChangeObject.id),<return>params: ChangeAction_params,<return>headers{ ChangeHeaders },<return>xhr: true<esc>/ChangeHtmlMethod\\|ChangeUrlHelper\\|(id: @ChangeObject.id)\\|,<return>params: ChangeAction_params\\|,<return>headers{ ChangeHeaders }\\|,<return>xhr: true<return>
" Tests Controller GEt (index)
nnoremap <silent> ,tcge aget ChangeUrlHelper_path<esc>/ChangeUrlHelper<return>
" Tests Controller GEt full (show or new or edit)
nnoremap <silent> ,tcgE aget ChangeUrlHelper_path(id: @ChangeModel.id)<esc>/ChangeUrlHelper\\|ChangeModel<return>
" Tests Controller POst
nnoremap <silent> ,tcpo apost ChangeUrlHelper_path, params: ChangeAction_params<esc>/ChangeUrlHelper\\|ChangeAction<return>
" Tests Controller PAtch
nnoremap <silent> ,tcpa apatch ChangeUrlHelper_path(ChangeModel), params: ChangeAction_params<esc>/ChangeUrlHelper\\|ChangeModel\\|ChangeAction<return>
" Tests Controller PAtch (full)
nnoremap <silent> ,tcpA apatch ChangeUrlHelper_path(ChangeModel),<return>params: ChangeAction_params,<return.headers{ ChangeHeaders },<return>env: ChangeEnvironment,<return>xhr: true,<return>as: :json<esc>/ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeAction\\|ChangeHeaders\\|ChangeEnvironment\\|:json<return>
" Tests Controller DElete
nnoremap <silent> ,tcdE adelete ChangeUrlHelper_path(ChangeModel)<esc>/ChangeUrlHelper\\|ChangeModel<return>
