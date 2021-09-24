" App Controller mappings
  " App Controllers Base for Template (or Html) controller
  nnoremap <silent> ,acbt :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnTemplate controller for ChangeDescription<esc>/class<return>A < ApplicationController<esc>/inner_followup<return>C# DeleteThis - use this if all actions require user to be logged in. Otherewise, remove<return><backspace><backspace>before_action :require_current_user<return>include_helpers ChangeHelpers<return><return># DeleteThis - insert actions<esc>/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeHelpers<return>
  nmap <silent> ,acbh ,acbt
  " App Controllers Base for Ajax controller
  nnoremap <silent> ,acba :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnAjax controller for ChangeDescription<esc>/class<return>A < ApplicationController<esc>/inner_followup<return>C# DeleteThis - use this if all actions require user to be logged in. Otherewise, remove<return><backspace><backspace>before_action :require_current_user<return>include_helpers ChangeTemplateController.included_helpers<return><return># DeleteThis - insert actions<esc>/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeTemplate<return>
  " App Controller Strong Params
  nnoremap <silent> ,acsp adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttributes)<return># DeleteThis - insert logic to restrict or clean params if necessary (example, enums will need "to_i" because param will be string but assign_attributes needs integer)<return><backspace><backspace>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttributes\\|DeleteThis<return>
  " App Controller Strong Params full
  nnoremap <silent> ,acsP adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttribute,<return>ChangeArrayAttribute: [],<return>ChangeChildName: [:ChangeAttribute],<return>ChangeChildrenName: [ChangeChildName: [:ChangeAttribute]])<return>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttribute\\|ChangeArrayAttribute\\|ChangeChildrenName\\|ChangeChildName<return>
  " App Controller Cancancan authorize Model based
  nnoremap <silent> ,accm aauthorize!(:ChangeAbility, @ChangeObject)<esc>/ChangeAbility\\|ChangeObject<return>
  " App Controller Cancancan authorize Non-model based (feature specific)
  nnoremap <silent> ,accn aauthorize!(:ChangeAbility, :ChangeControllerOrFeature)<esc>/ChangeAbility\\|ChangeControllerOrFeature<return>
  " App Controller Accessible By
  nnoremap <silent> ,acab aaccessible_by(current_ability, :ChangeAbility)<esc>/ChangeAbility<enter>
  " App Controller Accessible By full
  nnoremap <silent> ,acaB a@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeAbility).search(params[:ChangeLoads_search]).index_scope)<esc>/ChangeLoads\\|ChangeModel\\|ChangeAbility<enter>
  " App Controller REnder
  nnoremap <silent> ,acre arender 'ChangeTemplate'<esc>/ChangeTemplate<return>
  " App Controller Redirect To
  nnoremap <silent> ,acrt aredirect_to Change_url<esc>/Change_url<return>
  " App Controller Model impersonator New
  nnoremap <silent> ,acmn a@ChangeThisPls = ModelImpersonator.new<esc>/ChangeThisPls<return>
  " App Controller Model impersonator set Value
  nnoremap <silent> ,acmv a@ChangeThisPls.set_value(:ChangeAttribute, ChangeValue)<esc>/ChangeAttribute\\|ChangeValue<return>
  " App Controller Model impersonator add Error Message
  nnoremap <silent> ,acme a@ChangeThisPls.add_error_message(:ChangeAttribute, ChangeMessage)<esc>/ChangeAttribute\\|ChangeMessage<return>
  " App Controllers Index Base
  nnoremap <silent> ,acib adef index<return>authorize!(:ChangeAbility, :ChangeControllerOrFeature)<return>@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeAbility).ChangeScopes.ChangeSort)<return>end<esc>/ChangeLoads\\|ChangeModel\\|ChangeAbility\\|ChangeControllerOrFeature\\|DeleteThis\\|ChangeScopes\\|ChangeOrder<return>
  " App Controllers Index with Filters
  nnoremap <silent> ,acif adef index<return>authorize!(:ChangeAbility, :ChangeControllerOrFeature)<return>index_loads<return>end<return><return># DeleteThis - move this method to private<return><backspace><backspace>def index_loads(options = { filters_only: false })<return>@filter_helper = FilterHelpers::ChangePathToFilterHelper.new(params, current_ability, current_user)<return>@pagy, @ChangeLoads = pagy(@filter_helper.loads) unless options[:filters_only]<return>end<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|ChangeLoads\\|DeleteThis\\|ChangePathTo<return>
  " App Controllers Show Base
  nmap <silent> ,acsb :read ../templates/controllers/actions/show_base.rb<return>,mmrcsb_search
  nnoremap <silent> ,mmrcsb_search /ChangeLoad\\|ChangeModel\\|DeleteThis<return>
  " App Controllers Show Tab Router
  nnoremap <silent> ,acsr :read ../templates/controllers/actions/show_router.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeUrl\\|DeleteThis<return>
  " App Controllers New Base
  nmap <silent> ,acnb ,acsb/show<return>cgnnew<esc>,mmrcsb_search
  " App Controllers Create Ajax
  nnoremap <silent> ,acca :read ../templates/controllers/actions/create_ajax.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeObject\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeUrlHelper\\|ChangeTemplate<return>
  " App Controllers Create Html
  nnoremap <silent> ,acch :read ../templates/controllers/actions/create_html.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>
  " App Controllers Edit Base
  nmap <silent> ,aceb ,acsb/show<return>cgnedit<esc>,mmrcsb_search
  " App Controllers Update Ajax
  nmap <silent> ,acua :read ../templates/controllers/actions/update_ajax.rb<return>,acu_search
  nnoremap  <silent> ,acu_search /ChangeLoad\\|ChangeModel\\|ChangeAbility\\|DeleteThis\\|ChangeUrl\\|ChangeTemplate<return>
  " App Controllers Update Html
  nmap <silent> ,acuh :read ../templates/controllers/actions/update_html.rb<return>,acu_search
  " App Controllers Destroy Atml
  nnoremap <silent> ,acdh :read ../templates/controllers/actions/destroy_html.rb<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
  " App Controllers Destroy Ajax
  nnoremap <silent> ,acda :read ../templates/controllers/actions/destroy_ajax.rb<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
  " App Controllers FLash
  nnoremap <silent> ,acfl aflash[:ChangeFlashType] = ChangeMessage<esc>/ChangeFlashType\\|ChangeMessage<return>
  " App Controllers Flash Success
  nnoremap <silent> ,acfs aflash[:success] = ChangeMessage<esc>/ChangeMessage<return>
  " App Controllers Flash Info
  nnoremap <silent> ,acfi aflash[:info] = ChangeMessage<esc>/ChangeMessage<return>
  " App Controllers Flash Danger
  nnoremap <silent> ,acfd aflash[:danger] = ChangeMessage<esc>/ChangeMessage<return>
  " App Controllers Flash Danger
  nnoremap <silent> ,acfD aflash[:danger] = "ChangeMessage because of the following errors: #{ChangeObject.errors.map { \|error\| error.message[0].capitalize + error.message[1..] }.join('; ')}."<esc>/ChangeMessage\\|ChangeObject<return>


