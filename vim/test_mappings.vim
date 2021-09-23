" Miscellaneous Messages Test
function! TestDisclaimer()
  exe "normal! a# DeleteThis - do not test things that can easily change (ie text in source code)\<return>DeleteThis - do not test things so that if one thing is changed in source code many tests will break"
endfunction

" Test Run
  " File Test Current File
  nnoremap <silent> ,trcf :call FileTestCurrentFile(0)<return>
  " File Test Current File in terminal
  nnoremap <silent> ,trcF :call FileTestCurrentFile(1)<return>:call OpenTerminalInWindow()<return><C-c><C-\><C-n>pa<return>
  function! FileTestCurrentFile(use_shell)
    execute ':wa'
    let test_file = GetTestFileName()
    let test_command = substitute(test_file, 'test', 'rails t test', '')
    if a:use_shell == 0
      execute ':!' test_command
    else 
      let @+ = test_command
    endif
  endfunction
  function! GetTestFileName()
    let file = expand('%')
    " modify file name for non test files
    if index(split(file, '/'), 'test') == -1
      let file = substitute(file, '.rb', '_test.rb', '')
    endif
    return substitute(file, 'app\|lib\|test', 'test', '')
  endfunction
  " File Test All Files
  nnoremap <silent> ,traf :wa<return>:! rails t<return>
  " File Test All Files in terminal
  nnoremap <silent> ,traF :wa<return>:call OpenTerminalInWindow()<return><C-c>rails t<return>
" Test Base
  " Tests Base Test Base
  nnoremap <silent> ,tbtb atest 'Should ChangeThisPls when ChangeThisPls' do<return>end<esc>/ChangeThisPls<return>
  " Tests Base Test Method
  nnoremap <silent> ,tbtm atest 'method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
  " Tests Base Perform enqueued Jobs
  nnoremap <silent> ,tbpj aperform_enqueued_jobs<esc>
  " Tests Base FIxtures
  nnoremap <silent> ,tbfi @ChangeObject = ChangeTable(:ChangeFixture)<esc>/ChangeObject\\|ChangeTable\\|ChangeFixture<return>
  " Tests Fixtures Attach File
  nnoremap <silent> ,tbaf :call TestsBaseAttachFile()<return>/ChangeVariable\\|ChangePathAndExtension\\|ChangeContentType\\|DeleteThis\\|ChangeObject\\|ChangeAssociation<return>
  function! TestsBaseAttachFile()
    execute "normal! aChangeVariable = Rack::Test::UploadedFile.new(Rails.root.join('test', 'fixtures', 'files', 'ChangePathAndExtension'), 'ChangeContentType')\<return># DeleteThis - file type and subtypes:\<return>  application/pdf\<return>image/png image/gif image/jpeg\<return>video/mov video/mp4\<return>audio/mpeg audio/wave\<return>text/plain text/csv text/html\<return>see here for more examples: https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types\<return>\<backspace>\<backspace>\<backspace>@ChangeObject.ChangeAssociation.attach(ChangeVariable)"
  endfunction

" Tests Assert
  " Tests Assert Enqueued Emails
  nnoremap <silent> ,taee aassert_equal ChangeCount, enqueued_emails('ChangeMailerAndEmail').size<esc>/ChangeCount\\|ChangeMailerAndEmail<return>
  " Tests Assert No enqueued Emails
  nnoremap <silent> ,tane aassert_no_enqueued_emails<esc>
  nnoremap <silent> ,tanE aassert_empty enqueued_emails('ChangeMailerAndEmail')<esc>/ChangeMailerAndEmail<return>
  " Tests Assert Enqueued Jobs
  nnoremap <silent> ,taej aassert_enqueued_jobs ChangeCount, only: ::ChangeJob<esc>/ChangeCount\\|ChangeJob<return>
  " Tests Assert No enqueued Jobs
  nnoremap <silent> ,tanj aassert_no_enqueued_jobs
  nnoremap <silent> ,tanJ aassert_no_enqueued_jobs only: ::ChangeJob<esc>/ChangeJob<return>
  " common assertions
  nnoremap <silent> ,tadi aassert_difference 'ChangeCountable', ChangeDifference do<return>end<esc>/ChangeCountable\\|ChangeDifference<return>
  nnoremap <silent> ,taeq aassert_equal ChangeExpected, ChangeActual<esc>/ChangeExpected\\|ChangeActual<return>
  nnoremap <silent> ,tani aassert_nil ChangeThis<esc>/ChangeThis<return>
  nnoremap <silent> ,tann aassert_not_nil ChangeThis<esc>/ChangeThis<return>

" Controller
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

" Helper
  " Tests Helper BAse
  nnoremap <silent> ,thba :read ../templates/tests/helper_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|change_model_name\\|ChangeFixture<return>

" Integration
  " Tests Integration BAse
  nnoremap <silent> ,tiba :read ../templates/tests/integration_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|change_model_name\\|ChangeFixture\\|DeleteThis<return>

" Jobs
  " Tests Job BAse
  nnoremap <silent> ,tjba :read ../templates/tests/job_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|ChangeObject\\|ChangeTableName\\|ChangeFixtureName<return>
  nnoremap <silent> ,tjtb :read ../templates/tests/job_test_base.rb<return>/ChangeDescription\\|ChangeJobName\\|DeleteThis\\|ChangeJob\\|ChangeArgs\\|ChangeObject<return>

" Mailers
  " Tests Mailer BAse
  nnoremap <silent> ,tMba :read ../templates/tests/mailer_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|add mailer test<return>dd<up>,tatb/ChangeThisPls\\|ChangeThis\\|ChangeObject\\|change_model_name\\|ChangeFixture\\|ChangeEmail\\|ChangeThis\\|DeleteThis\\|ChangeSubject\\|ChangeMailTo\\|ChangeMailFrom\\|ChangeSomeContent<return>
  " Tests Mailer Test Base
  nnoremap <silent> ,tMtb :read ../templates/tests/mailer_test_base.rb<return>/ChangeEmail\\|ChangeThis\\|DeleteThis\\|ChangeSubject\\|ChangeMailTo\\|ChangeMailFrom\\|ChangeSomeContent<return>

" Models
  " Models Search
  function! TestModelSearch()
    let @/ = 'ChangeParent\|ChangeChildrenSingular\|ChangeChildren\|ChangeChildModel\|ChangeChild\|DeleteThis\|ChangeAttributes\|ChangeAttribute\|ChangeObject\|ChangeInvalidValue\|ChangeValue\|ChangeValidation\|ChangeConnectionModel\|ChangeAssociationSingular\|ChangeAssociation\|ChangeTable\|ChangeFixture\|ChangeScope\|ChangeClass\|ChangeThisPls\|ChangeDescription\|ChangeModel\|ChangeNextAttribute\|ChangeOneOrMany\|ChangeVariable\|ChangePathAndExtension\|ChangeContentType\|CopyScopeMethods'
    normal! n
  endfunction
  " Tests Model BAse
  nnoremap <silent> ,tmba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActiveSupport::TestCase<esc>:call IndentTemplate('inner_followup', 1, 0, '../templates/tests/model_base.rb')<return>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn model<esc>gg/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|ChangePermission\\|ChangeUserWithPermission\\|change_model_name\\|ChangeModel<return>

  " Test Models Associations
    " Tests Models Belongs To
    nnoremap <silent> ,tmbt atest 'association ChangeParent - belongs to' do<return>assert_equal ChangeTable(:ChangeFixture), @ChangeChild.ChangeParent<return>end<esc>:call TestModelSearch()<return>
    " Tests Models Had One
    nnoremap <silent> ,tmho atest 'association ChangeChild - has one' do<return>assert_equal ChangeTable(:ChangeFixture), @ChangeParent.ChangeChild<return>end<esc>/:call TestModelSearch()<return>
    " Tests Models Has Many
    nnoremap <silent> ,tmhm atest 'association ChangeChildren - has many' do<return>result = @ChangeParent.ChangeChildrenSingular_ids<return>assert_equal ChangeChildModel.where(ChangeParent_id: @ChangeParent.id).pluck(:id).sort, result.sort<return><space><backspace><esc>:call TestIncludedNotIncluded()<return>oend<esc>:call TestModelSearch()<return>
    " Tests Models Has Many through
    nnoremap <silent> ,tmhM atest 'association ChangeChildren - has many through' do<return>result = ChangeParent.ChangeAssociationSingular_ids<return># DeleteThis - use this for simple connection table (many to many)<return><backspace><backspace>assert_equal ChangeConnectionModel.where(ChangeParent_id: @ChangeParent.id).pluck(:ChangeChild_id).sort, resule.map(&:id).sort<return># DeleteThis - if not simple connection but does have inverse, use this<return><backspace><backspace>assert_equal ChangeChildModel.joins(:ChangeAssociation).where(id: @ChangeParent.id).distinct.pluck(:id).sort, result.uniq.sort<return><space><backspace><esc>:call TestIncludedNotIncluded()<return>oend<esc>:call TestModelSearch()<return>
    " Tests Models Has Attached
    nnoremap <silent> ,tmoa atest 'association ChangeAssociation - has one attached' do<return>assert_nil @ChangeObject.ChangeAssociation.attachment<return><space><backspace><esc>:call TestsFixturesUploadFile()<return>oassert_not_nil @ChangeObject.ChangeAssociation.attachment<return>end<esc>:call TestModelSearch()<return>
    " Tests Models Has many Attached
    nnoremap <silent> ,tmma atest 'association ChangeAssociation - has many attached' do<return>assert_empty @ChangeObject.ChangeAssociation<return><space><backspace><esc>:call TestsFixturesUploadFile()<return>oassert_not_empty @ChangeObject.ChangeAssociation<return>end<esc>:call TestModelSearch()<return>
  
  " Test Models Scopes
    " Tests Models SCope
    nnoremap <silent> ,tmsc atest 'scope ChangeScope' do<return>result = ChangeModel.ChangeScope.map(&:id)<return>assert_equal ChangeClass.CopyScopeMethods.pluck(:id), result<return># DeleteThis - use this for scopes that filter (ie use "where")<return><backspace><backspace><esc>:call TestIncludedNotIncluded()<return>o# DeleteThis - use this for scopes that sort (ie use "oder")<return><backspace><backspace>first = ChangeTable(:ChangeFixture).id<return>second = ChangeTable(:ChangeFixture).id<return>assert result.find_index(first) < result.find_index(second)<return>end<esc>:call TestModelSearch()<return>

  " Test Models Attributes
    " Tests Models ATtribute
    " Tests Models Attribute Enum
    " Tests Models Attributes Hash
    " Tests Models Attributes Array

  " Test Models Callbacks
    " Test Models CAllback
    nnoremap <silent> ,tmca atest 'callback ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
    " Tests Model Process attributes
    nnoremap <silent> ,tmpa atest 'callback process attributes' do<return>@ChangeObject.assign_attributes(ChangeAttribute: '    a     ')<return>@ChangeObject.valid?<return>assert_equal 'a', @ChangeObject.ChangeAttribute<return>@ChangeObject.assign_attributes(ChangeAttribute: '')<return>@ChangeObject.valid?<return>assert_nil @ChangeObject.ChangeAttribute<return>end<esc>:call TestModelSearch()<return>
    " Tests Model Nil Parent on orphanable childrend 
    nnoremap <silent> ,tmnp atest 'callback nil parent id on orphanable children before destroying parent' do<return>ChangeChild = @ChangeObject.ChangeChildren.first<return>assert_equal @ChangeObject.id, ChangeChild.ChangeParent_id<return>@ChangeObject.destroy<return>assert_nil ChangeChild.reload.ChangeParent_id<return>end<esc>:call TestModelSearch()<return>

  " Tests Models Validations
    " Tests Models VAlidation
    nnoremap <silent> ,tmva atest 'validation ChangeObject ChangeAttribute should be ChangeValidation' do<return>@ChangeObject.assign_attributes(ChangeAttribute: ChangeInvalidValue)<return>assert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return>end<esc>:call TestModelSearch()<return>
    " Tests Models Validate Attachment
    nnoremap <silent> ,tmvA atest 'validation ChangeObject ChangeAttribute should be ChangeValidation' do<return><space><backspace><esc>:call TestsBaseAttachFile()<return>oassert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return>end<esc>:call TestModelSearch()<return>
    " Tests Models Validation Unique with scope
    nnoremap <silent> ,tmvu atest 'validation ChangeObject ChangeAttribute should be unique scope to ChangeAttributes' do<return># DeleteThis - make it invalid<return><backspace><backspace>@ChangeObject.assign_attributes(ChangeAttribute: ChangeInvalidValue)<return>assert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return># DeleteThis - if there are additional attributes on scope, repeat for all other attribute by making it valid again and then invalid for next attribute until all attributes are covered<return><backspace><backspace>@ChangeObject.assign_attributes(ChangeAttribute: ChangeValue)<return>assert @ChangeObject.valid?<return>@ChangeObject.assign_attributes(ChangeNextAttribute: ChangeInvalidValue)<return>assert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return>end<esc>:call TestModelSearch()<return>

  " Tests Models Attribute instance Method
  nnoremap <silent> ,tmam atest 'attribute instance method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>

  " Tests Models Query instance Method
  nnoremap <silent> ,tmqm atest 'query instance method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>

  " Tests Models Service instance Method
  nnoremap <silent> ,tmsm atest 'service instance method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>

" Test Tasks
  " Test Tasks Base
  nnoremap <silent> ,tTba :read ../templates/tests/task_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/ChangeThisPls\\|ChangeTestType\\|ChangeFile\\|ChangeExpectedAction\\|ChangeTaskName\\|DeleteThis\\|ChangeApplicationName<return>
  
" Test Lib files
  " Test Lib files BAse
  nnoremap <silent> ,tlba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActionDispatch::IntegrationTest<esc>:call IndentTemplate('inner_followup', 1, 0, '../templates/tests/base.rb')<return>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>$xxxx/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/ChangeObject\\|ChangeTable\\|ChangeFixture\\|DeleteThis<return>
