" Tests Controller BAse
nnoremap <silent> ,tcba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActionDispatch::IntegrationTest<esc>:call IndentTemplate('inner_followup', 1, 0, '../templates/tests/controller_base.rb')<return>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn<esc>gg/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeObject\\|ChangeTable\\|ChangeFixture<return>
" Tests Controller Scenarios Base
nnoremap <silent> ,tcsb :read ../templates/tests/controller_scenarios_base.rb<return>/DeleteThis\\|ChangeAction\\|ChangeScope\\|ChangeAttribute\\|ChangeValueForDifferentAccount\\|ChangeValue\\|ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeObject)\\|, params: ChangeAction_params\\|ChangeUserWithPermission\\|ChangeInvalidValue<return>
" Tests Controller Test Base
nnoremap <silent> ,tctb :read ../templates/tests/controller_test_base.rb<return>/DeleteThis\\|ChangeAction\\|ChangeUserWithPermission\\|ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeId\\|ChangeTemplate\\|SuccessOrRedirect\\|ChangePath<return>
" Tests Controller Test Index
nnoremap <silent> ,tcti :read ../templates/tests/controller_test_index.rb<return>/included_not_included<return>nD:call TestIncludedNotIncluded()<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeModel\\|ChangeQuery\\|ChangeLoad\\|ChangeDifAccountObject\\|ChangeFilter\\|ChangeTable\\|ChangeFixture\\|ChangeDescription<return>
" Tests Controller Test Show
nnoremap <silent> ,tcts :read ../templates/tests/controller_test_show.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
" Tests Controller Test New
nnoremap <silent> ,tctn o# DeleteThis - refactor test for show to fit new<esc>:read ../templates/tests/controller_test_show.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
" Tests Controller Test Create
nnoremap <silent> ,tctc :read ../templates/tests/controller_test_create.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeModel\\|ChangePath\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect\\|ChangeObject\\|ChangeChainToCoreAccountId<return>
" Tests Controller Test Edit
nnoremap <silent> ,tcte o# DeleteThis - refactor test for show to fit edit<esc>:read ../templates/tests/controller_test_show.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
" Tests Controller Test Update
nnoremap <silent> ,tctu :read ../templates/tests/controller_test_update.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangePath\\|ChangeObject\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect<return>
" Tests Controller Test Destroy
nnoremap <silent> ,tctd :read ../templates/tests/controller_test_destroy.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeModel\\|ChangePath\\|ChangeObject\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect<return>
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
nnoremap <silent> ,tcde adelete ChangeUrlHelper_path(ChangeModel)<esc>/ChangeUrlHelper\\|ChangeModel<return>
