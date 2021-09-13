" Ruby model mappings
  " Ruby Models BAse
  nnoremap <silent> ,amba :call CreateBaseFile(1, 0, 1)<return>/class<return>wviwy/ChangeTopLevelDocumentation<return>viwpa model<esc><down>A < ApplicationRecord<esc>/inner_followup<esc>ddO# Class Methods<return><backspace><backspace>class << self<return>end<return><return># Associations<esc>o<esc>x0Do# Scopes<esc>o<esc>x0Do# Attributes<esc>o<esc>x0Do# Callbacks<esc>o<esc>x0Do# Validations<esc>o<esc>x0Do# Attribute Instance Methods<esc>o<esc>x0Do# Query Instance Methods<esc>o<esc>x0Do# Service Instance Methods<esc>gg
  " Ruby Models Cancancan Model based
  nnoremap <silent> ,amcm acan %i[ChangeAbility_ChangeControllerOrFeature], ChangeModel, ChangeMethod: user.ChangeValue<return># DeleteThis - ChangeAbility for regular abilities - use "manage" or some specific controller action<return>DeleteThis - ChangeAbility for accessible_by - always use "index".<return>DeleteThis - NOTE: accessible_by ALWAYS gets its own unique ability because accessible_by errors when<return>non-attribute (ie not columns in db) methods are used. This way regular abilities can use any method and we<return>don't have to worry about accessible_by breaking.<return>DeleteThis - ChangeControllerOrFeature - a specific controller or a feature that describes a collection of<return>controllers. In either case, should always start with main namespace (ex. "core" or "hr", etc.)<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|ChangeModel\\|ChangeMethod\\|ChangeValue\\|DeleteThis<enter>
  " Ruby Models Cancancan Non-model based
  nnoremap <silent> ,amcn acan %i[ChangeAbility], :ChangeControllerOrFeature<return># DeleteThis - ChangeAbility - use "manage" or some specific controller action<return>DeleteThis - ChangeControllerOrFeature - a specific controller or a feature that describes a collection of<return>controllers. In either case, should always start with main namespace (ex. "core" or "hr", etc.)<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|DeleteThis<enter>
  " Ruby Models Belongs To association
  nnoremap <silent> ,ambt abelongs_to :ChangeParentName, class_name: 'ChangeParentModel', inverse_of: :ChangeChildrenNameIfHasManyOrChildNameIfHasOne, optional: true, autosave: false<esc>/ChangeParentName\\|ChangeParentModel\\|ChangeChildrenNameIfHasManyOrChildNameIfHasOne<return>
  " Ruby Models Has Many association
  nnoremap <silent> ,amhm ahas_many :ChangeChildrenName, class_name: 'ChangeChildModel', foreign_key: 'ChangeParentName_id', inverse_of: :ChangeParentName, dependent: :destroy, autosave: false<esc>/ChangeChildrenName\\|ChangeChildModel\\|ChangeParentName<return>
  " Ruby Models has Many Through association
  nnoremap <silent> ,amhM ahas_many :ChangeChildrenName, through: :ChangeConnectingAssociationName, source: :ChangeChildrenName, inverse_of: :ChangeTopParentModel, autosave: false<esc>/ChangeChildrenName\\|ChangeChildrenName\\|ChangeConnectingAssociationName\\|ChangeTopParentModel<return>
  " Ruby Models Has One association
  nnoremap <silent> ,amho ahas_one :ChangeChildName, class_name: 'ChangeChildModel', inverse_of: :ChangeParentName, dependent: :destroy, autosave: false<esc>/ChangeChildName\\|ChangeChildModel\\|ChangeParentName<return>
  " Ruby Models has One Through association
  nnoremap <silent> ,amhO ahas_one :ChangeChildOrParentName, through: :ChangeConnectingAssociationName, source: :ChangeChildOrParentName, inverse_of: :ChangeBottomChildOrTopParentModel, autosave: false<esc>/ChangeChildOrParentName\\|ChangeChildOrParentName\\|ChangeConnectingAssociationName\\|ChangeBottomChildOrTopParentModel<return>
  " Ruby Models has Rich Text
  nnoremap <silent> ,amrt ahas_rich_text :ChangeAttribute<esc>/ChangeAttribute<return>
  " Ruby Models has One Attached
  nnoremap <silent> ,amoa ahas_one_attached :ChangeAttribute<esc>/ChangeAttribute<return>
  " Ruby Models has Many Attached
  nnoremap <silent> ,amma ahas_many_attached :ChangeAttributes<esc>/ChangeAttributes<return>
  " Ruby Models SCope
  nnoremap <silent> ,amsc ascope :ChangeName, -> { ChangeLogic }<esc>/ChangeName\\|ChangeLogic<return>
  " Ruby Models Scope with Argument(s)
  nnoremap <silent> ,amsa ascope :ChangeName, ->(ChangeArgument) { ChangeLogic }<esc>/ChangeName\\|ChangeArgument\\|ChangeLogic<return>
  " Ruby Models Scope Order
  nnoremap <silent> ,amsO ascope :order_and_distinct_on_ChangeAttributes, -> { select('DISTINCT ON (ChangeTable.ChangeAttribute, LOWER(ChangeTable.ChangeCaseInsensitiveAttribute)) ChangeTableToAccessAllAttributes.*').order('LOWER(ChangeTable.ChangeAttribute)') }<esc>/ChangeAttributes\\|ChangeTableToAccessAllAttributes\\|ChangeTable\\|ChangeAttribute\\|ChangeCaseInsensitiveAttribute<return>
  " Ruby Models Scope Query
  nnoremap <silent> ,amsq ascope :query, ->(query) { where("ChangeTable.ChangeAttribute ILIKE :query", query: "%#{query}%") }<esc>/ChangeTable\\|ChangeAttribute<return>
  " Ruby Models WHere (full)
  nnoremap <silent> ,amwh awhere("CONCAT_WS(' ', ChangeTable.ChangeAttribute, ChangeTable.ChangeAttribute) ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute IN (:ChangeArray) OR ChangeTable.ChangeAttribute = :ChangeThis OR ChangeTable.ChangeAttribute IS NULL OR ChangeTable.ChangeAttribute IS NOT NULL", ChangeSequence: "%#{ChangeSequence}%", ChangeArray: ChangeArray, ChangeThis: ChangeThis)<esc>/ChangeTable\\|ChangeAttributereturn
  " Ruby Models Validates Options
  function! RubyModlesValidatesOptions()
    execute "normal! a,\<return>allow_nil: true,\<return>allow_blank: true,\<return>if: ChangeMethodOrProcOrArray,\<return>unless: ChangeMethodOrProcOrArray"
  endfunction
  " Ruby Models Validates Search
  function! AppModelsValidatesSearch()
    let @/ = 'ChangeAttributes\|ChangeAttribute\|ChangeValidation\|%{model} %{attribute} %{value}\|ChangeMethodOrProcOrArray\|255ForStringOrSomeOtherLength\|ChangeThis\|ChangeRange\|DeleteThis\|ChangeAttachmenName\|ChangeMin\|ChangeMax\|ChangeSize\|ChangeDataSize\|ChangeWidthInteger\|ChangeHeightInteger\|ChangeItems\|Changemessage\|ChangeLogic\|ChangeValue\|ChangeMessage\|ChangeDescription'
    normal! n
  endfunction
  function! AppModelsValidatesMessage()
    execute "normal! amessage: '%{model} %{attribute} %{value}'\<return>\<space>\<backspace>"
  endfunction
  " Ruby Models Validates Base
  nnoremap <silent> ,amvb avalidates :ChangeAttribute, ChangeValidation: {<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " Ruby Models Validates Presence
  nnoremap <silent> ,amvp a# DeleteThis - for boolean, use `validates :attribute, exclusion: [nil]` becasuse presence checks `blank?` and `false.blank?` is true<return><backspace><backspace>validates :ChangeAttribute, presence: {<return>message: 'please add ChangeAttribute'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " Ruby Models Validates Absence
  nnoremap <silent> ,amva a# DeleteThis - for boolean, use `validates :attribute, inclusion: [nil]` becasuse absence checks `blank?` and `false.blank?` is true<return><backspace><backspace>validates :ChangeAttribute, absence: {<return>message: 'please remove ChangeAttribute'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " Ruby Models Validates Length
  nnoremap <silent> ,amvl avalidates :ChangeAttribute, length: {<return>is: ChangeValue,<return>minimum: ChangeMin,<return>maximum: 255,<return>in: ChangeRange,<return>message: 'ChangeAttribute is too long (maximum is 255 characters)'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " Ruby Models Validates Uniqueness
  nnoremap <silent> ,amvu avalidates :ChangeAttribute, uniqueness: {<return>case_sensitive: false,<return>scope: %i[ChangeAttributes],<return>message: 'this ChangeAttribute has already been taken'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " Ruby Models Validates Numericality
  nnoremap <silent> ,amvn avalidates :ChangeAttribute, numericality: {<return>only_integer: true,<return>allow_nil: true,<return>less_than: ChangeValue,<return>less_than_or_eqaul_to: ChangeValue,<return>equal_to: ChangeValue,<return>greater_than: ChangeValue,<return>greater_than_or_equal_to: ChangeValue,<return>other_than: ChangeValue,<return>odd: true,<return>even: true,<return>message: 'ChangeAttribute must be a number'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " Ruby Models Validates Attachment
  nnoremap <silent> ,amvA avalidates :ChangeAttachmenName, attached: {<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmenName, content_type: {<return>in: %w[image/jpeg image/gif image/png application/pdf],<return>message: 'Attached must be a valid format. Valid formats are: jpeg, gif, png, pdf'<return>in: %w[video/quicktime video/mp4 video/webm audio/ogg],<return>message: 'Attached must be a valid image video format. Valid formats are:  mp4, mov, webm, ogg'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmenName, size: {<return># DeleteThis - Can be "kilobytes", "megabytes" and probably others:<return><backspace><backspace> less_than: ChangeSize.ChangeDataSize,<return>message: 'ChangeAttribute is too large (ChangeSize MB max)'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmenName, dimension: {<return>width: { min: ChangeMin, max: ChangeMax },<return>height: { min: ChangeMin, max: ChangeMax },<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>$a<return>validates :ChangeAttachmenName, aspect_ratio:<return># DeleteThis - Choose one:<return><backspace><backspace>:square<return>:portrate<return>:landscape<return>:is_16_9<return># DeleteThis - Or add a dynamic aspect ratio:<return><backspace><backspace>:is_ChangeWidthInteger_ChangeHeightInteger{<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " Ruby Models Validates Inclusion
  nnoremap <silent> ,amvi avalidates :ChangeAttribute, inclusion: {<return>in: [ChangeItems],<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " Ruby Models Validates Exclusion
  nnoremap <silent> ,amve avalidates :ChangeAttribute, exclusion: {<return>in: [ChangeItems],<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call RubyModlesValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " Ruby Models Validates Each
  nnoremap <silent> ,amvE a# ChangeDescription<return><backspace><backspace>validates_each :ChangeAttribute do \|record, attr, value\|<return>record.errors.add(attr, 'ChangeMessage') if ChangeLogic<return>end<esc>:call AppModelsValidatesSearch()<return>
  " ....

  " Ruby Models Process Attributes
  nnoremap <silent> ,amcp abefore_validation :process_attributes<return># DeleteThis - move this to private section<return><backspace><backspace><esc><up>:read ../templates/models/misc/process_attributes.rb<return>/DeleteThis\\|ChangeAttribute\\|ChangeValue\\|ChangeIndedependentAttribute<return>
  " Ruby Models Attributes Enum
  nnoremap <silent> ,amae aenum ChangeAttribute: { ChangeValueSymbolOrString: ChangeInteger }, _prefix: true<return># DeleteThis -  If attribute will not be displayed, use symbol. If attribute will be displayed (esp. in options for select), use string (this way display does not require processing). If display changes down the road, you may want to refactor to symbol with class method for displays (and opitons for select) and instance method for display (use ,amas for example)<esc>/ChangeAttribute\\|ChangeValueSymbolOrString\\|ChangeInteger\\|DeleteThis<return>
  " Ruby Models Attributes enum Symbol example
  nnoremap <silent> ,amas aclass << self<return>def status_displays<return>{ 'It is pending' => 0, 'Officially active' => 1 }<return>end<return>end<return>enum status: { pending: 0, active: 1 }, _prefix: true<return>def display_status<return>self.class.status_displays.key(status_for_database)<return>end<return>end<esc>
  nnoremap <silent> ,amaE aenum ChangeAttribute: ChangeClass::SOMECONSTANT, _prefix: ChangeToTrueOrCustomSymbol, _suffix: ChangeToTrueOrCustomSymbol<return># DeleteThis - you can add custom methods to ChangeClass and then use them in ths model, example:<return><backspace><backspace>def ChangeAttribute_data<return>@ChangeAttribute_data \|\|= ChangeClass.new(ChangeAttribute)<return>end<esc>/ChangeAttribute\\|ChangeClass\:\:SOMECONSTANT\\|, _prefix: ChangeToTrueOrCustomSymbol\\|, _suffix: ChangeToTrueOrCustomSymbol\\|DeleteThis\\|ChangeClass<return>
  " Ruby Models Attributes Array
  nnoremap <silent> ,amaa aserialize :ChangeAttribute, Array
  " Ruby Models Attributes Hash
  nnoremap <silent> ,amah aserialize :ChangeAttribute, Hash
  " Ruby Models ORder
  nnoremap <silent> ,amor aorder(:ChangeAttribute)<esc>/ChangeAttribute<return>
  " Ruby Models Order Descending
  nnoremap <silent> ,amod aorder(ChangeAttribute: :desc)<esc>/ChangeAttribute<return>
  " Ruby Models Order Case insensitive
  nnoremap <silent> ,amoc aorder("LOWER(ChangeAttribute)")<esc>/ChangeAttribute<return>
  " Ruby Models ORder (full)
  nnoremap <silent> ,amoR aorder("LOWER(ChangeAttribute) DESC")<esc>/ChangeAttribute<return>
  
" Ruby Controller mappings
  " Ruby Controller Strong Params
  nnoremap <silent> ,acsp adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttributes)<return># DeleteThis - insert logic to restrict or clean params if necessary (example, enums will need "to_i" because param will be string but assign_attributes needs integer)<return><backspace><backspace>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttributes\\|DeleteThis<return>
  " Ruby Controller Strong Params full
  nnoremap <silent> ,acsP adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttribute,<return>ChangeArrayAttribute: [],<return>ChangeChildName: [:ChangeAttribute],<return>ChangeChildrenName: [ChangeChildName: [:ChangeAttribute]])<return>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttribute\\|ChangeArrayAttribute\\|ChangeChildrenName\\|ChangeChildName<return>
  " Ruby Controller Cancancan authorize Model based
  nnoremap <silent> ,accm aauthorize!(:ChangeAbility, @ChangeObject)<esc>/ChangeAbility\\|ChangeObject<return>
  " Ruby Controller Cancancan authorize Non-model based (feature specific)
  nnoremap <silent> ,accn aauthorize!(:ChangeAbility, :ChangeControllerOrFeature)<esc>/ChangeAbility\\|ChangeControllerOrFeature<return>
  " Ruby Controller Accessible By
  nnoremap <silent> ,acab aChangeModel.accessible_by(current_ability, :ChangeAbility)<esc>/ChangeModel\\|ChangeAbility<enter>
  " Ruby Controller Accessible By full
  nnoremap <silent> ,acaB a@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeAbility).search(params[:ChangeLoads_search]).index_scope)<esc>/ChangeLoads\\|ChangeModel\\|ChangeAbility<enter>
  " Ruby Controller REnder
  nnoremap <silent> ,acre arender 'ChangeTemplate'<esc>/ChangeTemplate<return>
  " Ruby Controller Redirect To
  nnoremap <silent> ,acrt aredirect_to Change_url<esc>/Change_url<return>
  " Ruby Controller Model impersonator New
  nnoremap <silent> ,acmn a@ChangeThisPls = ModelImpersonator.new<esc>/ChangeThisPls<return>
  " Ruby Controller Model impersonator set Value
  nnoremap <silent> ,acmv a@ChangeThisPls.set_value(:ChangeAttribute, ChangeValue)<esc>/ChangeAttribute\\|ChangeValue<return>
  " Ruby Controller Model impersonator add Error Message
  nnoremap <silent> ,acme a@ChangeThisPls.add_error_message(:ChangeAttribute, ChangeMessage)<esc>/ChangeAttribute\\|ChangeMessage<return>
  " Ruby Controllers Base for Template (or Html) controller
  nnoremap <silent> ,acbt :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnTemplate controller for ChangeDescription<esc>/class<return>A < ApplicationController<esc>/inner_followup<return>Cinclude_helpers ChangeHelpers<return><return># DeleteThis - insert actions<esc>/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeHelpers<return>
  nmap <silent> ,acbh ,acbt
  " Ruby Controllers Base for Ajax controller
  nnoremap <silent> ,acba :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnAjax controller for ChangeDescription<esc>/class<return>A < ApplicationController<esc>/inner_followup<return>Cinclude_helpers ChangeTemplateController.included_helpers<return><return># DeleteThis - insert actions<esc>/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeTemplateController<return>
  " Ruby Controllers Index Base
  nnoremap <silent> ,acib adef index<return>authorize!(:ChangeAbility, :ChangeControllerOrFeature)<return>@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeAbility))<return>end<esc>/ChangeLoads\\|ChangeModel\\|ChangeAbility\\|ChangeControllerOrFeature\\|DeleteThis<return>
  " Ruby Controllers Index with Filters
  nnoremap <silent> ,acif adef index<return>authorize!(:ChangeAbility, :ChangeControllerOrFeature)<return>load_filters_pagy_and_ChangeLoads<return>end<return><return># DeleteThis - move this method to private<return><backspace><backspace>def load_filters_pagy_and_ChangeLoads(options = { filters_only: false })<return>@filter_helper = FilterHelpers::ChangePathToFilterHelper.new(params, current_ability, current_user)<return>@pagy, @ChangeLoads = pagy(@filter_helper.loads) unless options[:filters_only]<return>end<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|ChangeLoads\\|DeleteThis\\|ChangePathTo<return>
  " Ruby Controllers Show Base
  nmap <silent> ,acsb :read ../templates/controllers/actions/show_base.rb<return>,mmrcsb_search
  nnoremap <silent> ,mmrcsb_search /ChangeLoad\\|ChangeModel\\|DeleteThis<return>
  " Ruby Controllers Show Tab Router
  nnoremap <silent> ,acsr :read ../templates/controllers/actions/show_router.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeUrl\\|DeleteThis<return>
  " Ruby Controllers New Base
  nmap <silent> ,acnb ,acsb/show<return>cgnnew<esc>,mmrcsb_search
  " Ruby Controllers Create Ajax
  nnoremap <silent> ,acca :read ../templates/controllers/actions/create_ajax.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeObject\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeUrlHelper\\|ChangeTemplate<return>
  " Ruby Controllers Create Html
  nnoremap <silent> ,acch :read ../templates/controllers/actions/create_html.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>
  " Ruby Controllers Edit Base
  nmap <silent> ,aceb ,acsb/show<return>cgnedit<esc>,mmrcsb_search
  " Ruby Controllers Update Ajax
  nmap <silent> ,acua :read ../templates/controllers/actions/update_ajax.rb<return>,acu_search
  nnoremap  <silent> ,acu_search /ChangeLoad\\|ChangeModel\\|ChangeAbility\\|DeleteThis\\|ChangeUrl\\|ChangeTemplate<return>
  " Ruby Controllers Update Html
  nmap <silent> ,acuh :read ../templates/controllers/actions/update_html.rb<return>,acu_search
  " Ruby Controllers Destroy Atml
  nnoremap <silent> ,acdh :read ../templates/controllers/actions/destroy_html.rb<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
  " Ruby Controllers Destroy Ajax
  nnoremap <silent> ,acda :read ../templates/controllers/actions/destroy_ajax.rb<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
  " Ruby Controllers FLash
  nnoremap <silent> ,acfl aflash[:ChangeFlashType] = ChangeMessage<esc>/ChangeFlashType\\|ChangeMessage<return>
  " Ruby Controllers Flash Success
  nnoremap <silent> ,acfs aflash[:success] = ChangeMessage<esc>/ChangeMessage<return>
  " Ruby Controllers Flash Info
  nnoremap <silent> ,acfi aflash[:info] = ChangeMessage<esc>/ChangeMessage<return>
  " Ruby Controllers Flash Danger
  nnoremap <silent> ,acfd aflash[:danger] = ChangeMessage<esc>/ChangeMessage<return>
  " Ruby Controllers Flash Danger
  nnoremap <silent> ,acfD aflash[:danger] = "ChangeMessage because of the following errors: #{ChangeObject.errors.map { \|error\| error.message[0].capitalize + error.message[1..] }.join('; ')}."<esc>/ChangeMessage\\|ChangeObject<return>

" Ruby Helpers
  " Ruby Helpers BAse
  nnoremap <silent> ,ahba :read ../templates/helpers/base_helper.rb<return>ggdd/ChangeThisPls<return>
  " Ruby Helpers Options for Select
  nnoremap <silent> ,ahos :read ../templates/helpers/options_for_select/base_options.rb<return>ggdd/ChangeThisPls<return>
  " Ruby Helpers Grouped Options for select
  nnoremap <silent> ,ahgo :read ../templates/helpers/options_for_select/grouped_options.rb<return>ggdd/ChangeThisPls<return>

" Ruby Jobs
  " Ruby Jobs BAse
  nmap <silent> ,ajba :read ../templates/jobs/base.rb<return>/DeleteThis\\|ChangeArguments\\|ChangeObject\\|ChangeModel\\|ChangeAttribute<return>

" Ruby Mailers
  " Ruby Mailers BAse
  nmap <silent> ,aMba :read ../templates/mailers/base.rb<return>/@to_user\\|ChangeObject\\|ChangeModel\\|ChangeId\\|ChangeVariable\\|ChangeOption\\|DeleteThis\\|ChangeGuardLogic\\|ChangeToEmail\\|ChangeFromEmail\\|ChangeSubject<return>
  " Ruby Mailers Html Email
  nmap <silent> ,aMhe :read ../templates/mailers/html_email.html.erb<return>ggdd/DeleteThis\\|ChangeUrl\\|ChangeEmail<return>
  " Ruby Mailers Deliver Later
  nnoremap <silent> ,aMdl aChangeMailerMailer.ChangeEmail_email(ChangeArgs).deliver_later<esc>/ChangeMailer\\|ChangeEmail\\|ChangeArgs<return>



