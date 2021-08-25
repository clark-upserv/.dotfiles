" Miscellaneous Messages Test
nnoremap <silent> ,mmtest_disclaimer a# DeleteThis - do not test things that can easily change (ie text in source code)<return>DeleteThis - do not test things so that if one thing is changed in source code many tests will break<esc>
" Base
  " Tests Base Test Base
  nnoremap <silent> ,tbtb atest 'Should ChangeThisPls when ChangeThisPls' do<return>end<esc>/ChangeThisPls<return>
  " Tests Base Test Method
  nnoremap <silent> ,tbtm atest 'method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
  " Tests Base Perform enqueued Jobs
  nnoremap <silent> ,tbpj aperform_enqueued_jobs<esc>
  

  
" Tests Fixtures
  " Tests Fixtures BAse
  nnoremap <silent> @ChangeObject = ChangeTable(:ChangeFixture)<esc>/ChangeObject\\|ChangeTable\\|ChangeFixture<return>
  " Tests Fixtures Upload File
  nnoremap <silent> ,tfuf :read ../templates/tests/misc/upload_fixture_file.rb<return><esc>/ChangeVariable\\|ChangePath\\|ChangeContentType\\|DeleteThisPls\\|ChangeObject\\|ChangeAttachment<return>

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

" Controller
  " Tests Controller BAse
  nmap <silent> ,tcba :read ../templates/tests/controller_base.rb<return>ggdd/ChangePathAndFileName<return>,fccfviwp/test disclaimer<return>cgn<esc>,mmtest_disclaimer/DeleteThis\\|ChangeThisPls\\|ChangeUserWithPermission\\|ChangeObject\\|change_model_name\\|ChangeModel<return>
  " Tests Controller Scenarios Base
  nnoremap <silent> ,tcsb :read ../templates/tests/controller_scenarios_base.rb<return>/DeleteThis\\|ChangeAction\\|ChangeScope\\|ChangeAttribute\\|ChangeValueForDifferentAccount\\|ChangeValue\\|ChangeHtmlMethod\\|ChangeUrlHelper\\|(id: @ChangeObject.id)\\|, params: ChangeAction_params\\|, xhr: true\\|ChangeUserWithPermission\\|ChangeInvalidValue<return>
  " Tests Controller Test Base
  nnoremap <silent> ,tctb :read ../templates/tests/controller_test_base.rb<return>/DeleteThis\\|ChangeAction\\|ChangeUserWithPermission\\|ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeId\\|, xhr: true\\|:success\\|ChangeTemplate\\|:redirect\\|ChangePath<return>
  " Tests Controller Test Index
  nnoremap <silent> ,tcti :read ../templates/tests/controller_test_index.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeModel\\|ChangeQuery\\|:id\\|ChangeLoad\\|ChangeDifAccountObject<return>
  " Tests Controller Test Show
  nnoremap <silent> ,tcts :read ../templates/tests/controller_test_show.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
  " Tests Controller Test New
  nnoremap <silent> ,tctn o# DeleteThis - refactor test for show to fit new<esc>:read ../templates/tests/controller_test_show.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
  " Tests Controller Test Create
  nnoremap <silent> ,tctc :read ../templates/tests/controller_test_create.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeModel\\|ChangePath\\|, xhr: true\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|:success\\|ChangeTemplate\\|:redirect\\|ChangeObject\\|ChangeChainToCoreAccountId<return>
  " Tests Controller Test Edit
  nnoremap <silent> ,tcte o# DeleteThis - refactor test for show to fit edit<esc>:read ../templates/tests/controller_test_show.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
  " Tests Controller Test Update
  nnoremap <silent> ,tctu :read ../templates/tests/controller_test_update.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangePath\\|ChangeObject\\|, xhr: true\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|:success\\|ChangeTemplate\\|:redirect<return>
  " Tests Controller Test Destroy
  nnoremap <silent> ,tctd :read ../templates/tests/controller_test_destroy.rb<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeModel\\|ChangePath\\|ChangeObject\\|, xhr: true\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|:success\\|ChangeTemplate\\|:redirect<return>
  " Tests Controller REquest
  nnoremap <silent> ,tcre  aChangeHtmlMethod ChangeUrlHelper_path(id: @ChangeObject.id), params: ChangeAction_params, headers{ ChangeHeaders }, xhr: true<esc>/ChangeHtmlMethod\\|ChangeUrlHelper\\|(id: @ChangeObject.id)\\|, params: ChangeAction_params\\|, headers{ ChangeHeaders }\\|, xhr: true<return>
  " Tests Controller GEt (index)
  nnoremap <silent> ,tcge aget ChangeUrlHelper_path<esc>/ChangeUrlHelper<return>
  " Tests Controller GEt full (show or new or edit)
  nnoremap <silent> ,tcgE aget ChangeUrlHelper_path(id: @ChangeModel.id)<esc>/ChangeUrlHelper\\|ChangeModel<return>
  " Tests Controller POst
  nnoremap <silent> ,tcpo apost ChangeUrlHelper_path, params: ChangeAction_params<esc>/ChangeUrlHelper\\|ChangeAction<return>
  " Tests Controller PAtch
  nnoremap <silent> ,tcpa apatch ChangeUrlHelper_path(ChangeModel), params: ChangeAction_params<esc>/ChangeUrlHelper\\|ChangeModel\\|ChangeAction<return>
  " Tests Controller PAtch (full)
  nnoremap <silent> ,tcpA apatch ChangeUrlHelper_path(ChangeModel), params: ChangeAction_params, headers{ ChangeHeaders }, env: ChangeEnvironment, xhr: true, as: :json<esc>/ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeAction\\|ChangeHeaders\\|ChangeEnvironment\\|:json<return>
  " Tests Controller DElete
  nnoremap <silent> ,tcde adelete ChangeUrlHelper_path(ChangeModel)<esc>/ChangeUrlHelper\\|ChangeModel<return>

" Helper
  " Tests Helper BAse
  nmap <silent> ,thba :read ../templates/tests/helper_base.rb<return>ggdd/ChangePathAndFileName<return>,fccfviwp/test disclaimer<return>cgn<esc>,mmtest_disclaimer/DeleteThis\\|ChangeThisPls\\|change_model_name\\|ChangeFixture<return>

" Integration
  " Tests Integration BAse
  nmap <silent> ,tiba :read ../templates/tests/integration_base.rb<return>ggdd/ChangePathAndFileName<return>,fccfviwp/test disclaimer<return>cgn<esc>,mmtest_disclaimer/DeleteThis\\|ChangeThisPls\\|change_model_name\\|ChangeFixture\\|DeleteThis<return>

" Jobs
  " Tests Job BAse
  nmap <silent> ,tjba :read ../templates/tests/job_base.rb<return>ggdd/ChangePathAndFileName<return>,fccfviwp/test disclaimer<return>cgn<esc>,mmtest_disclaimer/DeleteThis\\|ChangeThisPls\\|ChangeObject\\|ChangeTableName\\|ChangeFixtureName<return>
  nnoremap <silent> ,tjtb :read ../templates/tests/job_test_base.rb<return>/ChangeDescription\\|ChangeJobName\\|DeleteThis\\|ChangeJob\\|ChangeArgs\\|ChangeObject<return>

" Mailers
  " Tests Mailer BAse
  nmap <silent> ,tMba :read ../templates/tests/mailer_base.rb<return>ggdd/ChangePathAndFileName<return>,fccfviwp/test disclaimer<return>cgn<esc>,mmtest_disclaimer/DeleteThis\\|add mailer test<return>dd<up>,tatb/ChangeThisPls\\|ChangeThis\\|ChangeObject\\|change_model_name\\|ChangeFixture\\|ChangeEmail\\|ChangeThis\\|DeleteThis\\|ChangeSubject\\|ChangeMailTo\\|ChangeMailFrom\\|ChangeSomeContent<return>
  " Tests Mailer Test Base
  nmap <silent> ,tMtb :read ../templates/tests/mailer_test_base.rb<return>/ChangeEmail\\|ChangeThis\\|DeleteThis\\|ChangeSubject\\|ChangeMailTo\\|ChangeMailFrom\\|ChangeSomeContent<return>

" Models
  " Models Search
  nnoremap <silent> ,mmtest_model_search /ChangeParentOrClass\\|ChangeParent\\|ChangeAssoctionaOrScope\\|ChangeChildren\\|ChangeChildModel\\|ChangeChild\\|DeleteThis\\|ChangeAttributes\\|ChangeAttribute\\|ChangeObject\\|ChangeInvalidValue\\|ChangeValue\\|ChangeValidation\\|ChangeConnectionModel\\|ChangeAssociation\\|ChangeTable\\|ChangeFixture\\|ChangeScope\\|ChangeClass\\|ChangeThisPls\\|ChangeDescription<return>
  " Tests Model BAse
  nmap <silent> ,tmba :read ../templates/tests/model_base.rb<return>ggdd/ChangePathAndFileName<return>,fccfviwp/test disclaimer<return>cgn<esc>,mmtest_disclaimer/DeleteThis\\|ChangeThisPls\\|ChangePermission\\|ChangeUserWithPermission\\|change_model_name\\|ChangeModel<return>
  " Tests Models Belongs To
  nmap <silent> ,tmbt atest 'association ChangeParent - belongs to' do<return>assert_equal ChangeTable(:ChangeFixture), @ChangeChild.ChangeParent<return>end<esc>,mmtest_model_search
  " Tests Models Had One
  nmap <silent> ,tmho atest 'association ChangeChild - has one' do<return>assert_equal ChangeTable(:ChangeFixture), @ChangeParent.ChangeChild<return>end<esc>/,mmtest_model_search
  " Tests Models Has Many
  nmap <silent> ,tmhm atest 'association ChangeChildren - has many' do<return>assert_equal ChangeChildModel.where(ChangeParent_id: @ChangeParent.id).pluck(:id).sort, @ChangeParent.ChangeChildren.pluck(:id).sort<return>end<esc>,mmtest_model_search
  " Tests Models Has Many through
  nmap <silent> ,tmhM atest 'association ChangeChildren - has many through' do<return># DeleteThis - use this for simple connection table (many to many)<return><backspace><backspace>assert_equal ChangeConnectionModel.where(ChangeParent_id: @ChangeParent.id).pluck(:ChangeChild_id).sort, @ChangeParent.ChangeChildren.pluck(:id).sort<return># DeleteThis - if not simple connection but does have inverse, use this<return><backspace><backspace>assert_equal ChangeChildModel.joins(:ChangeAssociation).where(id: @ChangeParent.id).distinct.pluck(:id).sort, @ChangeParent.ChangeChildren.distinct.pluck(:id).sort<return><esc>,tminend<esc>,mmtest_model_search
  " Tests Models SCope
  nmap <silent> ,tmsc atest 'scope ChangeScope' do<return>assert_equal ChangeClass.where(ChangeThisPls).pluck(:id).sort, ChangeClass.ChangeScope.pluck(:id).sort<return><space><backspace><esc>,tmin# DeleteThis - idk how to test sort...tbd!<return><backspace><backspace>end<esc>,mmtest_model_search
  " Tests Models Included and Not included
  nnoremap <silent> ,tmin a# DeleteThis - Use this for scopes and non-simeple connection table has many through<return><backspace><backspace>included = [ChangeTable(:ChangeFixture)] # ChangeDescription<return>included << ChangeTable(:ChangeFixture) # ChangeDescription<return>assert_equal included, ChangeParentOrClass.ChangeAssoctionaOrScope & included<return>not_included = [ChangeTable(:ChangeFixture)] # ChangeDescription<return>not_included << ChangeTable(:ChangeFixture) # ChangeDescription<return>assert_empty not_included & ChangeParentOrClass.ChangeAssoctionaOrScope<return>
  " Tests Models ATtribute
  " Tests Models Attribute Enum
  " Tests Models Attributes Hash
  " Tests Models Attributes Array
  " Tests Models CAllbacks
  nnoremap <silent> ,tmme atest 'callback ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
  " Tests ModelProcess attributes Strip
  nmap <silent> ,tmps atest 'callback ChangeObject ChangeAttribute should be stripped' do<return>@ChangeObject.assign_attributes(ChangeAttribute: '    a     ')<return>@ChangeObject.valid?<return>assert_equal 'a', @ChangeObject.ChangeAttribute<return>end<esc>,mmtest_model_search
  " Tests Model Process attributes Nil Blank
  nmap <silent> ,tmpn atest 'callback ChangeObject ChangeAttribute should be nil if blank' do<return>@ChangeObject.assign_attributes(ChangeAttribute: '')<return>assert_not_nil @ChangeObject.ChangeAttribute<return>@ChangeObject.valid?<return>assert_nil @ChangeObject.ChangeAttribute<return>end<esc>,mmtest_model_search
  " Tests Models VAlidation
  nmap <silent> ,tmva atest 'validation ChangeObject ChangeAttribute should be ChangeValidation' do<return>@ChangeObject.assign_attributes(ChangeAttribute: ChangeInvalidValue)<return>assert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return>end<esc>,mmtest_model_search
  " Tests Models Validation Unique with scope
  nmap <silent> ,tmvu atest 'validation ChangeObject ChangeAttribute should be unique scope to ChangeAttributes' do<return># DeleteThis - make it invalid<return><backspace><backspace>@ChangeObject.assign_attributes(ChangeAttribute: ChangeInvalidValue)<return>assert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return># DeleteThis - make it valid by changing main attribute. Then repeat for all other attributes on scope<return><backspace><backspace>@ChangeObject.assign_attributes(ChangeAttribute: ChangeValue)<return>assert @ChangeObject.valid?<return>@ChangeObject.assign_attributes(ChangeAttribute: ChangeInvalidValue)<return>assert_not @ChangeObject.valid?<return># Deletethis - repeat for all other attributes on scope (if any)<return><backspace><backspace>end<esc>,mmtest_model_search
  " Tests Models Attribute instance Method
  nnoremap <silent> ,tmam atest 'attribute instance method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
  " Tests Models Query instance Method
  nnoremap <silent> ,tmqm atest 'query instance method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
  " Tests Models Service instance Method
  nnoremap <silent> ,tmsm atest 'service instance method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>

" Test Tasks
  " Test Tasks Base
  nmap <silent> ,tTba :read ../templates/tests/task_base.rb<return>ggdd/ChangePathAndFileName<return>,fccfviwp/test disclaimer<return>cgn<esc>,mmtest_disclaimer/ChangeThisPls\\|ChangeTestType\\|ChangeFile\\|ChangeExpectedAction\\|ChangeTaskName\\|DeleteThis\\|ChangeApplicationName<return>
  
" Test Lib files
  " Test Lib files BAse
  nmap <silent> ,tlba :read ../templates/tests/lib_file_base.rb<return>ggdd/ChangePathAndFileName<return>,fccfviwp/test disclaimer<return>cgn<esc>,mmtest_disclaimer/DeleteThis\\|ChangeTopLevel\\|ChangeThisPls\\|ChangeFile\\|ChangeType\\|ChangeObject\\|change_model_name\\|ChangeFixture<return>

  " Test Lib files BAse
  nmap <silent> ,tsba :read ../templates/tests/services_base.rb<return>ggdd/ChangePathAndFileName<return>,fccfviwp/test disclaimer<return>cgn<esc>,mmtest_disclaimer/DeleteThis\\|ChangeTopLevel\\|ChangeThisPls\\|ChangeFile\\|ChangeObject\\|change_model_name\\|ChangeFixture<return>
