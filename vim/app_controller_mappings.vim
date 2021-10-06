" App Controller mappings
  " App Controllers Base for Template (or Html) controller
  nnoremap <silent> ,acbt :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnTemplate controller for ChangeDescription<esc>/class<return>A < ApplicationController<esc>/inner_followup<return>C# DeleteThis - use this if all actions require user to be logged in. Otherewise, remove<return><backspace><backspace>before_action :require_current_user<return># DeleteThis - add helpers if necessary. Usually at first there are none so delete this line. But<return>add back later if / when helpers are needed. Default helper for controller included automatically<return><backspace><backspace>include_helpers ChangeHelpers<return><return># DeleteThis - insert actions<esc>/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeHelpers<return>
  nmap <silent> ,acbh ,acbt
  " App Controllers Base for Ajax controller
  nnoremap <silent> ,acba :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnAjax controller for ChangeDescription<esc>/class<return>A < ApplicationController<esc>/inner_followup<return>C# DeleteThis - use this if all actions require user to be logged in. Otherewise, remove<return><backspace><backspace>before_action :require_current_user<return>include_helpers ChangeTemplateController.included_helpers<return><return># DeleteThis - insert actions<esc>/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeTemplate<return>
  " App Controllers Index Base
  nnoremap <silent> ,acib adef index<return>authorize!(:ChangeAbility, :ChangeControllerOrFeature)<return>@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeAbility).ChangeScopes.ChangeSort)<return>end<esc>/ChangeLoads\\|ChangeModel\\|ChangeAbility\\|ChangeControllerOrFeature\\|DeleteThis\\|ChangeScopes\\|ChangeSort<return>
  " App Controllers Index with Filters
  nnoremap <silent> ,acif adef index<return>authorize!(:ChangeAbility, :ChangeControllerOrFeature)<return>index_loads<return>end<return><return># DeleteThis - move this method to private<return><backspace><backspace>def index_loads(options = { filters_only: false })<return>@filter_helper = FilterHelpers::ChangePathToFilterHelper.new(params, current_ability, current_user)<return>@pagy, @ChangeLoads = pagy(@filter_helper.loads) unless options[:filters_only]<return>end<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|ChangeLoads\\|DeleteThis\\|ChangePathTo<return>
  " App Controllers Show Base
  nnoremap <silent> ,acsb :call IndentTemplate('', 1, 0, '../templates/controllers/actions/show_base.rb')<return>:call AppControllerShowSearch()<return>
  function! AppControllerShowSearch()
    let @/ = "ChangeLoad\\|ChangeModel\\|DeleteThis"
    normal! n
  endfunction
  " App Controllers Show Tab Router
  nnoremap <silent> ,acsr :call IndentTemplate('', 1, 0, '../templates/controllers/actions/show_router.rb')<return>/ChangeLoad\\|ChangeModel\\|ChangeUrl\\|DeleteThis<return>
  " App Controllers New Base
  nnoremap <silent> ,acnb :call IndentTemplate('', 1, 0, '../templates/controllers/actions/show_base.rb')<return>/show<return>cgnnew<esc>:call AppControllerShowSearch()<return>
  " App Controllers Create Ajax
  nnoremap <silent> ,acca :call IndentTemplate('', 1, 0, '../templates/controllers/actions/create_ajax.rb')<return>/ChangeLoad\\|ChangeModel\\|ChangeObject\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeUrlHelper\\|ChangeTemplate<return>
  " App Controllers Create Html
  nnoremap <silent> ,acch :call IndentTemplate('', 1, 0, '../templates/controllers/actions/create_html.rb')<return>/ChangeLoad\\|ChangeModel\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>
  " App Controllers Edit Base
  nnoremap <silent> ,aceb :call IndentTemplate('', 1, 0, '../templates/controllers/actions/show_base.rb')<return>/show<return>cgnedit<esc>:call AppControllerShowSearch()<return>
  " App Controllers Update Ajax
  nnoremap <silent> ,acua :call IndentTemplate('', 1, 0, '../templates/controllers/actions/update_ajax.rb')<return>:call AppControllerUpdateSearch()<return>
  function! AppControllerUpdateSearch()
    let @/ = "ChangeLoad\\|ChangeModel\\|ChangeAbility\\|DeleteThis\\|ChangeUrl\\|ChangeTemplate"
    normal! n
  endfunction
  " App Controllers Update Html
  nnoremap <silent> ,acuh :call IndentTemplate('', 1, 0, '../templates/controllers/actions/update_html.rb')<return>:call AppControllerUpdateSearch()<return>
  " App Controllers Destroy Ajax
  nnoremap <silent> ,acda :call IndentTemplate('', 1, 0, '../templates/controllers/actions/destroy_ajax.rb')<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
  " App Controllers Destroy Html
  nnoremap <silent> ,acdh :call IndentTemplate('', 1, 0, ' ../templates/controllers/actions/destroy_html.rb')<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
  " App Controller Strong Params
  nnoremap <silent> ,acsp adef ChangeAction_params<return>params.require('ChangeRequire').permit(:ChangeAttributes)<return>end<esc>/ChangeAction\\|ChangeRequire\\|ChangeAttributes<return>
  " App Controller Strong params with Enum
  nnoremap <silent> ,acse adef ChangeAction_params<return>ChangeAction_params = params.require('ChangeRequire').permit(:ChangeAttributes)<return>ChangeAction_params[:ChangeEnum] = ChangeAction_params[:ChangeEnum].to_i<return>ChangeAction_params<return>end<esc>/ChangeAction\\|ChangeRequire\\|ChangeAttributes\\|ChangeEnum<return>
  " App Controller Strong params with Logic
  nnoremap <silent> ,acsl adef ChangeAction_params<return>ChangeAction_params = params.require('ChangeRequire').permit(:ChangeAttributes)<return>ChangeAction_params # insert logic to restrict or clean params<return>ChangeAction_params<return>end<esc>/ChangeAction\\|ChangeRequire\\|ChangeAttributes<return>
  " App Controller Strong Params full
  nnoremap <silent> ,acsP adef ChangeAction_params<return>params.require('ChangeRequire').permit(:ChangeAttribute,<return>ChangeArrayAttribute: [],<return>ChangeChildName: [:ChangeAttribute],<return>ChangeChildrenName: [ChangeChildName: [:ChangeAttribute]])<return>end<esc>/ChangeAction\\|ChangeRequire\\|ChangeAttribute\\|ChangeArrayAttribute\\|ChangeChildrenName\\|ChangeChildName<return>
  " App Controller Cancancan authorize Model based
  nnoremap <silent> ,accm aauthorize!(:ChangeAbility, @ChangeObject)<esc>/ChangeAbility\\|ChangeObject<return>
  " App Controller Cancancan authorize Non-model based (feature specific)
  nnoremap <silent> ,accn aauthorize!(:ChangeAbility, :ChangeControllerOrFeature)<esc>/ChangeAbility\\|ChangeControllerOrFeature<return>
  " App Controller Accessible By
  nnoremap <silent> ,acab aaccessible_by(current_ability, :ChangeAbility)<esc>/ChangeAbility<enter>
  " App Controller Accessible By full
  nnoremap <silent> ,acaB a@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeAbility).search(params[:ChangeLoads_search]).index_scope)<esc>/ChangeLoads\\|ChangeModel\\|ChangeAbility<enter>
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
  " App Controller REnder
  nnoremap <silent> ,acre arender 'ChangeTemplate'<esc>/ChangeTemplate<return>
  " App Controller Redirect To
  nnoremap <silent> ,acrt aredirect_to Change_url<esc>/Change_url<return>
  " App Controller Include Helpers
  nnoremap <silent> ,acih ainclude_helpers ChangeHelpers<esc>/ChangeHelpers<return>

