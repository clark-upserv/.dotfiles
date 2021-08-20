" ruby basics
  " Ruby Basic Frozen String
  nnoremap <silent> ,rbfs a# frozen_string_literal: true
  
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

" Ruby Block
  " Ruby Block EAch
  nnoremap <silent> ,rbea aeach do \|ChangeThisPls\|<return>end<esc>/ChangeThisPls<return>cgn
  nnoremap <silent> ,rbeA aeach { \|ChangeThisPls\| ChangeThisPls }<esc>/ChangeThisPls<return>
  inoremap <silent> .eachb .each do \|\|<return>end<esc><up>$i
  " Ruby Block Each With index
  nnoremap <silent> ,rbew aeach_with_index do \|ChangeThisPls, index\|<return>ChangeThisPls<return>end<esc>/ChangeThisPls<return>
  nnoremap <silent> ,rbeW aeach_with_index { \|ChangeThisPls, index\| ChangeThisPls }<esc>/ChangeThisPls<return>
  " Ruby Block MAp
  nnoremap <silent> ,rbma amap do \|ChangeThisPls\|<return>ChangeThisPls<return>end<esc>/ChangeThisPls<return>
  nnoremap <silent> ,rbmA amap { <bar>ChangeThisPls<bar> ChangeThisPls }<esc>/ChangeThisPls<return>
  " Ruby Block SElect
  nnoremap <silent> ,rbse aselect <bar>ChangeThisPls<bar><return>ChangeThisPls<return>end<esc>/ChangeThisPls<return>
  nnoremap <silent> ,rbsE aselect { <bar>ChangeThisPls<bar> ChangeThisPls }<esc>/ChangeThisPls<return>
  " Ruby Block SOrt
  nnoremap <silent> ,rbso asort { <bar>ChangeThisPls, ChangeThisPls<bar> ChangeThisPls <=> ChangeThisPls }<esc>/ChangeThisPls<return>
  inoremap <silent> .sorti .sort { <bar>a, b<bar> a.ChangeThisPls <=> b.ChangeThisPls }<esc>/ChangeThisPls<return>cgn

" Ruby model mappings
  " Ruby Models BAse
  nnoremap <silent> ,rmba :read ../templates/models/base/base.rb<return>ggdd/ChangeThisPls<return>
  " Ruby Models Base Virtual
  nnoremap <silent> ,rmbv :read ../templates/models/base/virtual.rb<return>ggdd/ChangeThisPls<return>
  " Ruby Models Base Class
  nnoremap <silent> ,rmbc :read ../templates/models/base/class.rb<return>ggdd/ChangeThisPls\\|change_args<return>
  " Ruby Models Base Service
  nnoremap <silent> ,rmbs :read ../templates/models/base/service.rb<return>ggdd/ChangeThisPls<return>
  " Ruby Models MOdule
  nnoremap <silent> ,rmbm :read ../templates/models/base/module.rb<return>ggdd/ChangeThisPls<return>
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
  nnoremap <silent> ,rmvd avalidates :ChangeAttribute, dependent_on: { independent_path: %i[ChangeMethods], # DeleteThis - independent_path is required<return># DeleteThis - dependent_path is optional<return><backspace><backspace>dependent_path: %i[ChangeMethods],<return># DeleteThis - one of the below is required if using specific values(can only pick one) values<return><backspace><backspace>if_independent_is: [ChangeValues],<return>if_independent_is_not: [ChangeValues],<return>if_independent_is_greater_than: ChangeValue,<return>if_independent_is_greater_than_or_equal_to: ChangeValue,<return>if_independent_is_less_than: ChangeValue,<return>if_independent_is_less_than_or_equal_to: ChangeValue,<return># DeleteThis - one of the below is required if using specific values (can only pick one)<return><backspace><backspace>dependent_must_be: [ChangeValues],<return>dependent_cannot_be: [ChangeValues],<return># DeleteThis - one of the below is required if simply comparing to each other (can only pick one)<return><backspace><backspace>equal_values: true,<return>not_equal_values: true,<return>depenent_greater_than_or_equal_to_independent: true,<return>depenent_less_than_or_equal_to_independent: true,<return># DeleteThis - message is optional<return><backspace><backspace>message: 'ChangeMessage' }<esc>/ChangeAttribute\\|ChangeMethods\\|ChangeValues\\|ChangeValue\\|ChangeMessage\\|DeleteThis<return>
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


