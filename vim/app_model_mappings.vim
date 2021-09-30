" Base / Misc
  " App Models BAse
  nnoremap <silent> ,amba :call CreateBaseFile(1, 0, 1)<return>/class<return>wviwy/ChangeTopLevelDocumentation<return>viwpa model<esc><down>A < ApplicationRecord<esc>/inner_followup<esc>ddO# Class Methods<return><backspace><backspace>class << self<return>end<return><return># Associations<esc>o<esc>x0Do# Scopes<return>DeleteThis - create default order (if necessary). User LOWER if it should be case insensitive. Otherwise, use regulare order method.<return><backspace><backspace>scope :by_ChangeDefault, -> { order('LOWER(ChangeAttribute)') }<return>scope :by_ChangeDefault, -> { order(:ChangeAttribute) }<esc>o<esc>x0Do# Attributes<esc>o<esc>x0Do# Callbacks<esc>o<esc>x0Do# Validations<esc>o<esc>x0Do# Attribute Instance Methods<esc>o<esc>x0Do# Query Instance Methods<esc>o<esc>x0Do# Service Instance Methods<esc>gg/DeleteThis\\|ChangeDefault\\|ChangeAttribute<return>
  
  " App Models Cancancan Model based
  nnoremap <silent> ,amcm acan %i[ChangeAbility_ChangeControllerOrFeature], ChangeModel, ChangeMethod: user.ChangeValue<return># DeleteThis - ChangeAbility for regular abilities - use "manage" or some specific controller action<return>DeleteThis - ChangeAbility for accessible_by - always use "index".<return>DeleteThis - NOTE: accessible_by ALWAYS gets its own unique ability because accessible_by errors when<return>non-attribute (ie not columns in db) methods are used. This way regular abilities can use any method and we<return>don't have to worry about accessible_by breaking.<return>DeleteThis - ChangeControllerOrFeature - a specific controller or a feature that describes a collection of<return>controllers. In either case, should always start with main namespace (ex. "core" or "hr", etc.)<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|ChangeModel\\|ChangeMethod\\|ChangeValue\\|DeleteThis<enter>
  " App Models Cancancan Non-model based
  nnoremap <silent> ,amcn acan %i[ChangeAbility], :ChangeControllerOrFeature<return># DeleteThis - ChangeAbility - use "manage" or some specific controller action<return>DeleteThis - ChangeControllerOrFeature - a specific controller or a feature that describes a collection of<return>controllers. In either case, should always start with main namespace (ex. "core" or "hr", etc.)<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|DeleteThis<enter>

" Associations
  " App Models Belongs To association
  nnoremap <silent> ,ambt abelongs_to :ChangeParentName, class_name: 'ChangeParentModel', inverse_of: :ChangeChildrenNameIfHasManyOrChildNameIfHasOne, optional: true, autosave: false<esc>/ChangeParentName\\|ChangeParentModel\\|ChangeChildrenNameIfHasManyOrChildNameIfHasOne<return>
  " App Models Has Many association
  nnoremap <silent> ,amhm ahas_many :ChangeChildrenName, class_name: 'ChangeChildModel', foreign_key: 'ChangeParentName_id', inverse_of: :ChangeParentName, dependent: :destroy, autosave: false<esc>/ChangeChildrenName\\|ChangeChildModel\\|ChangeParentName<return>
  " App Models has Many Through association
  nnoremap <silent> ,amhM ahas_many :ChangeChildrenName, through: :ChangeConnectingAssociationName, source: :ChangeChildrenName, inverse_of: :ChangeTopParentModel, autosave: false<esc>/ChangeChildrenName\\|ChangeChildrenName\\|ChangeConnectingAssociationName\\|ChangeTopParentModel<return>
  " App Models Has One association
  nnoremap <silent> ,amho ahas_one :ChangeChildName, class_name: 'ChangeChildModel', inverse_of: :ChangeParentName, dependent: :destroy, autosave: false<esc>/ChangeChildName\\|ChangeChildModel\\|ChangeParentName<return>
  " App Models has One Through association
  nnoremap <silent> ,amhO ahas_one :ChangeChildOrParentName, through: :ChangeConnectingAssociationName, source: :ChangeChildOrParentName, inverse_of: :ChangeBottomChildOrTopParentModel, autosave: false<esc>/ChangeChildOrParentName\\|ChangeChildOrParentName\\|ChangeConnectingAssociationName\\|ChangeBottomChildOrTopParentModel<return>
  " App Models has Rich Text
  nnoremap <silent> ,amrt ahas_rich_text :ChangeAttribute<esc>/ChangeAttribute<return>
  " App Models has One Attached
  nnoremap <silent> ,amoa ahas_one_attached :ChangeAttribute<esc>/ChangeAttribute<return>
  " App Models has Many Attached
  nnoremap <silent> ,amma ahas_many_attached :ChangeAttributes<esc>/ChangeAttributes<return>

" Scopes
  " App Models SCope
  nnoremap <silent> ,amsc ascope :ChangeName, -> { ChangeLogic }<esc>/ChangeName\\|ChangeLogic<return>
  " App Models Scope with Argument(s)
  nnoremap <silent> ,amsa ascope :ChangeName, ->(ChangeArgument) { ChangeLogic }<esc>/ChangeName\\|ChangeArgument\\|ChangeLogic<return>
  " App Models Scope Order
  nnoremap <silent> ,amso ascope :order_and_distinct_on_ChangeAttributes, -> { select('DISTINCT ON (ChangeTable.ChangeAttribute, LOWER(ChangeTable.ChangeCaseInsensitiveAttribute)) ChangeTableToAccessAllAttributes.*').order('LOWER(ChangeTable.ChangeAttribute)') }<esc>/ChangeAttributes\\|ChangeTableToAccessAllAttributes\\|ChangeTable\\|ChangeAttribute\\|ChangeCaseInsensitiveAttribute<return>
  " App Models Scope Query
  nnoremap <silent> ,amsq ascope :query, ->(query) { where('ChangeTable.ChangeAttribute ILIKE :query', query: "%#{query}%") }<esc>/ChangeTable\\|ChangeAttribute<return>
  " App Models WHere (full)
  nnoremap <silent> ,amwh awhere("CONCAT_WS(' ', ChangeTable.ChangeAttribute, ChangeTable.ChangeAttribute) ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute IN (:ChangeArray) OR ChangeTable.ChangeAttribute = :ChangeThis OR ChangeTable.ChangeAttribute IS NULL OR ChangeTable.ChangeAttribute IS NOT NULL", ChangeSequence: "%#{ChangeSequence}%", ChangeArray: ChangeArray, ChangeThis: ChangeThis)<esc>/ChangeTable\\|ChangeAttributereturn
  " App Models ORder
  nnoremap <silent> ,amor aorder(:ChangeAttribute)<esc>/ChangeAttribute<return>
  " App Models Order Descending
  nnoremap <silent> ,amod aorder(ChangeAttribute: :desc)<esc>/ChangeAttribute<return>
  " App Models Order Case insensitive
  nnoremap <silent> ,amoc aorder('LOWER(ChangeAttribute)')<esc>/ChangeAttribute<return>
  " App Models ORder (full)
  nnoremap <silent> ,amoR aorder("LOWER(ChangeAttribute) DESC")<esc>/ChangeAttribute<return>

" Attributes
  " App Models attributes ENum
  nnoremap <silent> ,amen aenum ChangeAttribute: { ChangeValueSymbolOrString: ChangeInteger }, _prefix: true<return># DeleteThis - If attribute will not be displayed, use symbol. If attribute will be displayed (esp. in options for select), use string (this way display does not require processing). If display changes down the road, you may want to refactor to symbol with class method for displays (and opitons for select) and instance method for display (use ,ames for example)<esc>/ChangeAttribute\\|ChangeValueSymbolOrString\\|ChangeInteger\\|DeleteThis<return>
  " App Models attributes ENum
  nnoremap <silent> ,ameN aenum ChangeAttribute: ChangeClass::SOMECONSTANT, _prefix: ChangeToTrueOrCustomSymbol, _suffix: ChangeToTrueOrCustomSymbol<return># DeleteThis - you can add custom methods to ChangeClass and then use them in ths model, example:<return><backspace><backspace>def ChangeAttribute_data<return>@ChangeAttribute_data \|\|= ChangeClass.new(ChangeAttribute)<return>end<esc>/ChangeAttribute\\|ChangeClass\:\:SOMECONSTANT\\|, _prefix: ChangeToTrueOrCustomSymbol\\|, _suffix: ChangeToTrueOrCustomSymbol\\|DeleteThis\\|ChangeClass<return>
  " App Models attributes Enum Symbol example
  nnoremap <silent> ,ames aclass << self<return>def status_displays<return>{ 'It is pending' => 0, 'Officially active' => 1 }<return>end<return>end<return>enum status: { pending: 0, active: 1 }, _prefix: true<return>def display_status<return>self.class.status_displays.key(status_for_database)<return>end<esc>
  " App Models attributes ARray
  nnoremap <silent> ,amaa aserialize :ChangeAttribute, Array
  " App Models attributes HAsh
  nnoremap <silent> ,amha aserialize :ChangeAttribute, Hash

" Callbacks
  " App Models Process Attributes
  nnoremap <silent> ,ampa abefore_validation :process_attributes<return># DeleteThis - move this to private section<return><backspace><backspace><esc><up>:read ../templates/models/misc/process_attributes.rb<return>/DeleteThis\\|ChangeAttribute\\|ChangeValue\\|ChangeIndedependentAttribute<return>
  " App Models Nil Parent on orphanable childrend
  nnoremap <silent> ,amnp abefore_destroy :nil_parent_id_on_orphanable_children<return># DeleteThis - move below method to private section<return><backspace><backspace>def nil_parent_id_on_orphanable_children<return># DeleteThis - make all children nil<return><backspace><backspace>ChangeChildren.update_all(ChangeForeignKey_id: nil)<return># DeleteThis - if this model can be the parent of one of it's parents (in a circular child / parent association), then remove the foreign key in the parent record<return><backspace><backspace>ChangeChild.update(ChangeForeignKey_id: nil) if ChangeParent.ChangeChildParent_id == id<return>end<esc>/DeleteThis\\|ChangeChildren\\|ChangeForeignKey\\|ChangeParent\\|ChangeChildParent<return>
" Validations
  " App Models Validates Options
  function! RubyModlesValidatesOptions()
    execute "normal! a,\<return>allow_nil: true,\<return>allow_blank: true,\<return>if: ChangeMethodOrProcOrArray,\<return>unless: ChangeMethodOrProcOrArray"
  endfunction
  " App Models Validates Search
  function! AppModelsValidatesSearch()
    let @/ = 'ChangeAttributes\|ChangeAttribute\|ChangeValidation\|%{model} %{attribute} %{value}\|ChangeMethodOrProcOrArray\|255ForStringOrSomeOtherLength\|ChangeThis\|ChangeRange\|DeleteThis\|ChangeAttachmentName\|ChangeMin\|ChangeMax\|ChangeSize\|ChangeByteType\|ChangeWidthInteger\|ChangeHeightInteger\|ChangeItems\|Changemessage\|ChangeLogic\|ChangeValue\|ChangeMessage\|ChangeDescription'
    normal! n
  endfunction
  function! AppModelsValidatesMessage()
    execute "normal! amessage: '%{model} %{attribute} %{value}'\<return>\<space>\<backspace>"
  endfunction
  " App Models Validates Base
  nnoremap <silent> ,amvb avalidates :ChangeAttribute, ChangeValidation: {<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  function! AppModelsPresenceAbsenceNote()
    execute "normal! a# DeleteThis - for booleans, use exclusion or inclusion rather than presence or absence because presence and absence use \"blank?\" and false.blank? is true\<return>DeleteThis - NOTE: Also, in general booleans shouldn't use presence or absence but instead should have a default value set up in the migration file\<return>\<backspace>\<backspace>"
  endfunction
  " App Models Validates Presence
  nnoremap <silent> ,amvp :call AppModelsPresenceAbsenceNote()<return>avalidates :ChangeAttribute, presence: {<return>message: 'please add ChangeAttribute'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Absence
  nnoremap <silent> ,amva :call AppModelsPresenceAbsenceNote()<return>avalidates :ChangeAttribute, absence: {<return>message: 'please remove ChangeAttribute'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Length
  nnoremap <silent> ,amvl avalidates :ChangeAttribute, length: {<return>is: ChangeValue,<return>minimum: ChangeMin,<return>maximum: 255,<return>in: ChangeRange,<return>message: 'ChangeAttribute is too long (maximum is 255 characters)'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Uniqueness
  nnoremap <silent> ,amvu avalidates :ChangeAttribute, uniqueness: {<return>case_sensitive: false,<return>scope: %i[ChangeAttributes],<return>message: 'this ChangeAttribute has already been taken'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Numericality
  nnoremap <silent> ,amvn avalidates :ChangeAttribute, numericality: {<return>only_integer: true,<return>allow_nil: true,<return>less_than: ChangeValue,<return>less_than_or_eqaul_to: ChangeValue,<return>equal_to: ChangeValue,<return>greater_than: ChangeValue,<return>greater_than_or_equal_to: ChangeValue,<return>other_than: ChangeValue,<return>odd: true,<return>even: true,<return>message: 'ChangeAttribute must be a number'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Attachment
  nnoremap <silent> ,amvA avalidates :ChangeAttachmentName, attached: {<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmentName, content_type: {<return>in: %w[image/jpeg image/gif image/png image/heic application/pdf],<return>message: 'ChangeAttachmentName must be a valid format. Valid formats are: jpeg, gif, png, heic, pdf'<return>in: %w[video/quicktime video/mp4 video/webm audio/ogg],<return>message: 'ChangeAttachmentName must be a valid image video format. Valid formats are:  mp4, mov, webm, ogg'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmentName, size: {<return># DeleteThis - Byte type an be "kilobytes", "megabytes" and probably others:<return><backspace><backspace> less_than: ChangeSize.ChangeByteType,<return>message: 'ChangeAttribute is too large (ChangeSize ChangeByteType max)'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmentName, dimension: {<return>width: { min: ChangeMin, max: ChangeMax },<return>height: { min: ChangeMin, max: ChangeMax },<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmentName, aspect_ratio:<return># DeleteThis - Choose one:<return><backspace><backspace>:square<return>:portrate<return>:landscape<return>:is_16_9<return># DeleteThis - Or add a dynamic aspect ratio:<return><backspace><backspace>:is_ChangeWidthInteger_ChangeHeightInteger{<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Inclusion
  nnoremap <silent> ,amvi avalidates :ChangeAttribute, inclusion: {<return>in: [ChangeItems],<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Exclusion
  nnoremap <silent> ,amve avalidates :ChangeAttribute, exclusion: {<return>in: [ChangeItems],<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Each
  nnoremap <silent> ,amvE a# ChangeDescription<return><backspace><backspace>validates_each :ChangeAttribute do \|record, attr, value\|<return>record.errors.add(attr, 'ChangeMessage') if ChangeLogic<return>end<esc>:call AppModelsValidatesSearch()<return>
