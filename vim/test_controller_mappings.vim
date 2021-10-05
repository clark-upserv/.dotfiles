" Tests Controller BAse
nnoremap <silent> ,tcba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActionDispatch::IntegrationTest<esc>:call IndentTemplate('inner_followup', 1, 0, '../templates/tests/controller_base.rb')<return>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn<esc>gg/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeObject\\|ChangeTable\\|ChangeFixture<return>
" Tests Controller AUthorization
nnoremap <silent> ,tcau :call IndentTemplate('', 0, 0, '../templates/tests/controller_authorization.rb')<return>/DeleteThis\\|ChangeAction\\|ChangeScope\\|ChangeAttribute\\|ChangeValueForDifferentAccount\\|ChangeValue\\|ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeObject\\|, params: ChangeAction_params\\|ChangeUserWithPermission\\|ChangeInvalidValue<return>
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
