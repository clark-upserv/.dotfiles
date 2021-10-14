" Models Search
function! TestModelSearch()
  let @/ = 'ChangeParent\|ChangeChildrenSingular\|ChangeChildren\|ChangeChildModel\|ChangeChild\|DeleteThis\|ChangeAttributes\|ChangeAttribute\|ChangeObject\|ChangeInvalidValue\|ChangeValue\|ChangeValidation\|ChangeConnectionModel\|ChangeAssociationSingular\|ChangeAssociation\|ChangeTable\|ChangeFixture\|ChangeScope\|ChangeClass\|ChangeThisPls\|ChangeDescription\|ChangeModel\|ChangeNextAttribute\|ChangeOneOrMany\|ChangeVariable\|ChangePathAndExtension\|ChangeContentType\|CopyScopeMethods\|ChangeMethod'
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
  nnoremap <silent> ,tmsc atest 'scope ChangeScope' do<return>result = ChangeModel.ChangeScope.map(&:id)<return>assert_equal ChangeClass.CopyScopeMethods.pluck(:id), result<return># DeleteThis - use this for scopes that filter (ie use "where")<return><backspace><backspace><esc>:call TestIncludedNotIncluded()<return>o# DeleteThis - use this for scopes that sort (ie use "oder")<return><backspace><backspace>first = ChangeTable(:ChangeFixture).id<return>second = ChangeTable(:ChangeFixture).id<return>assert result.find_index(first) < result.find_index(second)<return># DeleteThis - use this for scopes that pluck<return><backspace><backspace>ChangeObject = ChangeTable(:ChangeFixture)<return>included = [[ChangeObject.ChangeMethod]]<return>assert_equal included, (result & included)<return>end<esc>:call TestModelSearch()<return>

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
