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
  function! RubyBlockBlockInsertMode()
    execute "normal! ado \|\|\<return>end\<esc>\<up>$"
  endfunction
  " Ruby Block EAch
  nnoremap <silent> ,rbea aeach do \|ChangeArgs\|<return>end<esc>/ChangeArgs<return>cgn
  nnoremap <silent> ,rbeA aeach { \|ChangeArgs\| ChangeLogic }<esc>/ChangeArgs\\|ChangeLogic<return>
  " [shorthand]
  inoremap <silent> eachb each <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> eachi each { \|\| ChangeLogic }<esc>/ChangeLogic<return>2<left>i
  inoremap <silent> eachs each(&:)<left>
  " Ruby Block Each With index
  nnoremap <silent> ,rbew aeach_with_index do \|ChangeArgs, index\|<return>end<esc>/ChangeArgs<return>
  nnoremap <silent> ,rbeW aeach_with_index { \|ChangeArgs, index\| ChangeLogic }<esc>/ChangeArgs\\|ChangeLogic<return>
  inoremap <silent> eachwb each_with_index do \|, index\|<return>end<esc><up>$7<left>i
  inoremap <silent> eachwi each_with_index { \|, index\| ChangeLogic }<esc>/ChangeLogic<return>9<left>i
  " Ruby Block TImes
  " [block]
  " [inline]
  " [shorthand]
  inoremap <silent> timesb times do \|index\|<return>end<esc>/index<return>
  inoremap <silent> timesi times { \|index\| ChangeLogic }<esc>/index\\|ChangeLogic<return>
  inoremap <silent> timess times(&:)<left>
  " Ruby Block MAp
  nnoremap <silent> ,rbma amap do \|ChangeArgs\|<return>end<esc>/ChangeArgs<return>
  nnoremap <silent> ,rbmA amap { \|ChangeArgs\| ChangeLogic }<esc>/ChangeArgs\\|ChangeLogic<return>
  inoremap <silent> mapb map <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> mapi map { \|\| ChangeLogic }<esc>/ChangeLogic<return>2<left>i
  inoremap <silent> maps map(&:)<left>
  " Ruby Block SElect
  nnoremap <silent> ,rbse aselect \|ChangeArgs\|<return>end<esc>/ChangeArgs<return>
  nnoremap <silent> ,rbsE aselect { \|ChangeArgs\| ChangeLogic }<esc>/ChangeArgs\\|ChangeLogic<return>
  " [shorthand]
  inoremap <silent> selectb select <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> selecti select { \|\| ChangeLogic }<esc>/ChangeLogic<return>2<left>i
  inoremap <silent> selects select(&:)<left>
  " Ruby Block SOrt
  nnoremap <silent> ,rbso asort do \|a, b\|<retrun>a.ChangeLogic <=> b.ChangeLogic<return>end<esc>/ChangeLogic<return>
  nnoremap <silent> ,rbsO asort { \|a, b\| a.ChangeLogic <=> b.ChangeLogic }<esc>/ChangeLogic<return>
  " [block]
  inoremap <silent> sortb sort do \|a, b\|<return>a.ChangeLogic <=> b.ChangeLogic<return>end<esc>/ChangeLogic<return>cgn
  inoremap <silent> sorti sort { \|a, b\| a.ChangeLogic <=> b.ChangeLogic }<esc>/ChangeLogic<return>cgn
  " Ruby Block Lambda
  " [block]
  " [inline]
  " [shorthand]
  inoremap <silent> lambdab lambda <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> lambdaa lambda { \|\|<return>}<esc><up>$i
  inoremap <silent> lambdai ->() { ChangeLogic }<esc>/ChangeLogic<return>4<left>i
  inoremap <silent> lambdas lambda(&:ChangeMethod)<esc>/ChangeMethod<return>
  " Ruby Block Proc
  " [block]
  " [inline]
  " [shorthand]
  inoremap <silent> procb proc <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> proca proc { \|\|<return>}<esc><up>$i
  inoremap <silent> proci proc { \|\| ChangeLogic }<esc>/ChangeLogic<return>2<left>i
  inoremap <silent> procs proc(&:ChangeMethod)<esc>/ChangeMethod<return>

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
  nnoremap <silent> ,rmcm acan %i[ChangeControllerOrFeature], ChangeModel, ChangeMethod: user.ChangeValue<return># DeleteThis - review and delete notes below<return>Model based auth is typically used for controller actions that are tied to a singular specific model (typically show, create, update, destroy; also new and edit)<return>Abilities can be for specific controllers OR specific features<return>Abilities for accessible by need their own unique ability with "index_" prefix. These can only use attribute methods<return>Examples:<return>Controller Specific (Not Accesccible By): can %[manage_core_users], Core::User # only for app/controllers/core/users_controller.rb; can have non-attribute methods<return>Controller Specific & Accessible By: can %[index_core_users], Core::User # only for app/controllers/core/users_controller.rb; CAN ONLY have attribute methods<return>Feature Specific (Not Accesccible By): can %[manage_hr_time_off], Hr::Employee # for all controllers related to time off involving Hr::Employee; can have non-attribute methods<return>Feature Specific & Accessible By: can %[index_hr_time_off], Hr::Employee # for all controllers related to time off involving Hr::Employee; CAN ONLY have non-attribute methods<esc>/ChangeControllerOrFeature\\|ChangeModel\\|ChangeMethod\\|ChangeValue\\|DeleteThis<enter>
  " Ruby Models Cancancan Non-model based
  nnoremap <silent> ,rmcn acan %i[ChangeAbility], :ChangeControllerOrFeature<return># DeleteThis - review and delete notes below<return>Non-model based auth is typically used for controller actions not tied to a singular specific model (typically index pages or static pages)<return>Abilities can be for specific controllers OR specific features<return>Examples:<return>Controller Specific: can %[manage], :core_users # only for app/controllers/core/users_controller.rb<return>Feature Specific: can %[manage], :hr_time_off # for all controllers related to time off involving Hr::Employee<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|DeleteThis<enter>
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
  nnoremap <silent> ,rmsO ascope :order_and_distinct_on_ChangeAttributes, -> { select('DISTINCT ON (ChangeTable.ChangeAttribute, LOWER(ChangeTable.ChangeCaseInsensitiveAttribute)) ChangeTableToAccessAllAttributes.*').order('LOWER(ChangeTable.ChangeAttribute)') }<esc>/ChangeAttributes\\|ChangeTableToAccessAllAttributes\\|ChangeTable\\|ChangeAttribute\\|ChangeCaseInsensitiveAttribute<return>
  " Ruby Models Scope Query
  nnoremap <silent> ,rmsq ascope :query, ->(query) { where("ChangeTable.ChangeAttribute ILIKE :query", query: "%#{query}%") }<esc>/ChangeTable\\|ChangeAttribute<return>
  " Ruby Models WHere (full)
  nnoremap <silent> ,rmwh awhere("CONCAT_WS(' ', ChangeTable.ChangeAttribute, ChangeTable.ChangeAttribute) ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute IN (:ChangeArray) OR ChangeTable.ChangeAttribute = :ChangeThis OR ChangeTable.ChangeAttribute IS NULL OR ChangeTable.ChangeAttribute IS NOT NULL", ChangeSequence: "%#{ChangeSequence}%", ChangeArray: ChangeArray, ChangeThis: ChangeThis)<esc>/ChangeTable\\|ChangeAttributereturn
  " Ruby Models Validates Options
  function! RubyModlesValidatesOptions()
    execute "normal! a,\<return>allow_nil: true,\<return>allow_blank: true,\<return>if: ChangeMethodOrProcOrArray,\<return>unless: ChangeMethodOrProcOrArray"
  endfunction
  " Ruby Models Validates Search
  function! RubyModelsValidatesSearch()
    let @/ = 'ChangeAttributes\|ChangeAttribute\|ChangeValidation\|%{model} %{attribute} %{value}\|ChangeMethodOrProcOrArray\|255ForStringOrSomeOtherLength\|ChangeThis\|ChangeRange\|DeleteThis\|ChangeAttachmenName\|ChangeMin\|ChangeMax\|ChangeSize\|ChangeDataSize\|ChangeWidthInteger\|ChangeHeightInteger\|ChangeItems\|Changemessage\|ChangeLogic\|ChangeValue\|ChangeMessage'
  endfunction
  " Ruby Models Validates Base
  nnoremap <silent> ,rmvb avalidates :ChangeAttribute, ChangeValidation: {<return>message: '%{model} %{attribute} %{value}'<return>}<esc>:call RubyModlesValidatesOptions()<return>:call RubyModelsValidatesSearch()<return>n
  " Ruby Models Validates Presence
  nnoremap <silent> ,rmvp a# DeleteThis - for boolean, use `validates :attribute, exclusion: [nil]` becasuse presence checks `blank?` and `false.blank?` is true<return><backspace><backspace>validates :ChangeAttribute, presence: {<return>message: '%{model} %{attribute} %{value}'<return>}<esc>:call RubyModlesValidatesOptions()<return>:call RubyModelsValidatesSearch()<return>n
  " Ruby Models Validates Absence
  nnoremap <silent> ,rmva a# DeleteThis - for boolean, use `validates :attribute, inclusion: [nil]` becasuse absence checks `blank?` and `false.blank?` is true<return><backspace><backspace>validates :ChangeAttribute, absence: {<return>message: '%{model} %{attribute} %{value}'<return>}<esc>:call RubyModlesValidatesOptions()<return>:call RubyModelsValidatesSearch()<return>n
  " Ruby Models Validates Length
  nnoremap <silent> ,rmvl avalidates :ChangeAttribute, length: {<return>is: ChangeValue,<return>minimum: ChangeMin,<return>maximum: 255ForStringOrSomeOtherLength,<return>in: ChangeRange,<return>message: '%{model} %{attribute} %{value}'<return>message: '%{attribute} is too long (maximum is 255ForStringOrSomeOtherLength characters)'}<esc>:call RubyModlesValidatesOptions()<return>:call RubyModelsValidatesSearch()<return>n
  " Ruby Models Validates Uniqueness
  nnoremap <silent> ,rmvu avalidates :ChangeAttribute, uniqueness: {<return>case_sensitive: false,<return>scope: %i[ChangeAttributes]<return>message: '%{model} %{attribute} %{value}'<return>message: 'this %{attribute} has already been taken'<return>}<esc>/:call RubyModlesValidatesOptions()<return>:call RubyModelsValidatesSearch()<return>n
  " Ruby Models Validates Numericality
  nnoremap <silent> ,rmvn avalidates :ChangeAttribute, numericality: {<return>only_integer: true,<return>allow_nil: true,<return>less_than: ChangeValue,<return>less_than_or_eqaul_to: ChangeValue,<return>equal_to: ChangeValue,<return>greater_than: ChangeValue,<return>greater_than_or_equal_to: ChangeValue,<return>other_than: ChangeValue,<return>odd: true,<return>even: true,<return>message: '%{model} %{attribute} %{value}'<return>message: '%{attribute} must be a number'<return>}<esc>:call RubyModlesValidatesOptions()<return>:call RubyModelsValidatesSearch()<return>n
  " Ruby Models Validates Attachment
  nnoremap <silent> ,rmvA avalidates :ChangeAttachmenName, attached: {<return>message: '%{model} %{attribute} %{value}'<return>}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmenName, content_type: {<return>in: %w[image/jpeg image/gif image/png application/pdf],<return>message: 'Attached must be a valid format. Valid formats are: jpeg, gif, png, pdf'<return>in: %w[video/quicktime video/mp4 video/webm audio/ogg],<return>message: 'Attached must be a valid image video format. Valid formats are:  mp4, mov, webm, ogg'<return>}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmenName, size: {<return># DeleteThis - Can be "kilobytes", "megabytes" and probably others:<return><backspace><backspace> less_than: ChangeSize.ChangeDataSize,<return>message: '%{model} %{attribute} %{value}'<return>message: '%{attribute} is too large (ChangeSize MB max)'<return>}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmenName, dimension: {<return>width: { min: ChangeMin, max: ChangeMax },<return>height: { min: ChangeMin, max: ChangeMax },<return>message: '%{model} %{attribute} %{value}'<return>}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmenName, aspect_ratio:<return># DeleteThis - Choose one:<return><backspace><backspace>:square<return>:portrate<return>:landscape<return>:is_16_9<return># DeleteThis - Or add a dynamic aspect ratio:<return><backspace><backspace>:is_ChangeWidthInteger_ChangeHeightInteger{<return>message: '%{model} %{attribute} %{value}'<return>}<esc>:call RubyModlesValidatesOptions()<return>:call RubyModelsValidatesSearch()<return>n
  " Ruby Models Validates Inclusion
  nnoremap <silent> ,rmvi avalidates :ChangeAttribute, inclusion: {<return>in: [ChangeItems],<return>message: '%{model} %{attribute} %{value}'<return>}<esc>:call RubyModlesValidatesOptions()<return>:call RubyModelsValidatesSearch()<return>n
  " Ruby Models Validates Exclusion
  nnoremap <silent> ,rmve avalidates :ChangeAttribute, exclusion: {<return>in: [ChangeItems],<return>message: '%{model} %{attribute} %{value}'<return>}<esc>:call RubyModlesValidatesOptions()<return>:call RubyModelsValidatesSearch()<return>n
  " Ruby Models Validates Each
  nnoremap <silent> ,rmvE avalidates_each :ChangeAttribute do \|record, attr, value\|<return>record.errors.add(attr, 'ChangeMessage') if ChangeLogic<return>end<esc>:call RubyModelsValidatesSearch()<return>
  " ....

  " Ruby Models Process Attributes
  nnoremap <silent> ,rmpa o# DeleteThis - this goes in callbacks section<return><backspace><backspace>before_validation :process_attributes<return># DeleteThis - this goes in callback methods section<return><backspace><backspace><esc><up>:read ../templates/models/misc/process_attributes.rb<return>/DeleteThis\\|ChangeAttribute\\|ChangeValue\\|ChangeIndedependentAttribute<return>
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


