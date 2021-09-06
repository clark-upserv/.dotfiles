"" File Edit (and Explore)
"  " File Edit SEarch
"  nnoremap ,fese :e **/*
"  " File Edit Current Path
"  nnoremap ,fecp :let @+ = expand('%:h') . '/'<return>:e <C-R><C-R>+<space><backspace>
"  " File Edit Current File
"  nnoremap ,fecf :let @+ = expand('%')<return>:e <C-R><C-R>+
"  " File Edit CLipboard
"  nnoremap ,fecl :e <C-R><C-R>+<space><backspace>
"  " File Edit Style Sheet
"  nnoremap <silent> ,fess :call FileEditStyleSheet()<return>
"  function FileEditStyleSheet()
"    let current_file = expand('%')
"    if match(current_file, 'app/assets/stylesheets') != -1
"      let file = 'on style sheet'
"    elseif match(current_file, 'app/controllers') != -1
"      let file = substitute(expand('%'), 'controllers', 'assets/stylesheets', '')
"      let file = substitute(file, '_controller.rb', '', '')
"    elseif match(current_file, 'app/views') != -1
"      let file = substitute(expand('%:h'), 'views', 'assets/stylesheets', '')
"    elseif match(current_file, 'app/helpers') != -1
"      let file = substitute(expand('%'), 'helpers', 'assets/stylesheets', '')
"      let file = substitute(file, '_helper.rb', '', '')
"    else 
"      let file = 1
"    endif
"    if file == 'on style sheet'
"      echo 'Already on style sheet file'
"    elseif file == 1
"      echo 'Unable to find controller for' current_file
"    else
"      execute ':e' file
"    endif
"  endfunction
"
"  " File Edit COntroller
"  nnoremap <silent> ,feco :call FileEditController()<return>
"  function FileEditController()
"    let current_file = expand('%')
"    if match(current_file, 'app/controllers') != -1
"      let file = 'on controller'
"    elseif match(current_file, 'app/views') != -1
"      let file = substitute(expand('%:h'), 'views', 'controllers', '') . '_controller.rb'
"    elseif match(current_file, 'app/helpers') != -1
"      let file = substitute(expand('%'), 'helpers', 'controllers', '')
"      let file = substitute(file, '_helper.rb', '_controller.rb', '')
"    else 
"      let file = 1
"    endif
"    if file == 'on controller'
"      echo 'Already on controller file'
"    elseif file == 1
"      echo 'Unable to find controller for' current_file
"    else
"      execute ':e' file
"    endif
"  endfunction
"  " File Edit HElper
"  nnoremap <silent> ,fehe :call FileEditHelper()<return>
"  function FileEditHelper()
"    let current_file = expand('%')
"    if match(current_file, 'app/helpers') != -1
"      let file = 'on helper'
"    elseif match(current_file, 'app/controllers') != -1
"      let file = substitute(current_file, 'controllers', 'helpers', '')
"      let file = substitute(file, '_controller.rb', '_helper.rb', '')
"    elseif match(current_file, 'app/views') != -1
"      let file = substitute(expand('%:h'), 'views', 'helpers', '') . '_helper.rb'
"    else 
"      let file = 1
"    endif
"    if file == 'on helper'
"      echo 'Already on helper file'
"    elseif file == 1
"      echo 'Unable to find helper for' current_file
"    else
"      execute ':e' file
"    endif
"  endfunction
"  " File Edit VIew
"  nnoremap <silent> ,fevi :call FileEditView()<return>
"  function FileEditView()
"    let current_file = expand('%')
"    if match(current_file, 'app/views') != -1
"      let file = expand('%:h')
"    elseif match(current_file, 'app/assets/stylesheets') != -1
"      let file = substitute(expand('%:h'), 'assets/stylesheets', 'views', '')
"    elseif match(current_file, 'app/controllers') != -1
"      let file = substitute(current_file, 'controllers', 'views', '')
"      let file = substitute(file, '_controller.rb', '', '')
"    elseif match(current_file, 'app/helpers') != -1
"      let file = substitute(expand('%'), 'helpers', 'views', '')
"      let file = substitute(file, '_helper.rb', '', '')
"    else 
"      let file = 1
"    endif
"    if file == 1
"      echo 'Unable to find views for' current_file
"    else
"      execute ':Explore' file
"    endif
"  endfunction
"  " File Edit TEst
"  nnoremap <silent> ,fete :call FileEditTest()<return>
"  function FileEditTest()
"    execute ':e' GetTestFileName()
"  endfunction
"  " File Edit Test Source
"  nnoremap <silent> ,fets :call FileEditTestSource()<return>
"  function FileEditTestSource()
"    let current_file = expand('%')
"    let file = substitute(current_file, '_test.rb', '.rb', '')
"    if match(file, 'controller\|helper\|job\|mailer\|model') != -1
"      let file = substitute(file, 'test', 'app', '')
"    else
"      let file = substitute(file, 'test', 'lib', '')
"    endif
"    execute ':e' file
"  endfunction
"
"" File Test
"  " File Test Current File
"  nnoremap <silent> ,ftcf :call FileTestCurrentFile(0)<return>
"  " File Test Current File in terminal
"  nnoremap <silent> ,ftcF :call FileTestCurrentFile(1)<return>:call OpenTerminalInWindow()<return><C-c><esc>p$a<return>
"  function! FileTestCurrentFile(use_shell)
"    execute ':wa'
"    let test_file = GetTestFileName()
"    let command = substitute(test_file, 'test', 'rails t test', '')
"    if a:use_shell == 0
"      execute ':!' command
"    else 
"      let @+ = command
"    endif
"  endfunction
"  function! GetTestFileName()
"    let file = expand('%')
"    " modify file name for non test files
"    if index(split(file, '/'), 'test') == -1
"      let file = substitute(file, '.rb', '_test.rb', '')
"    endif
"    return substitute(file, 'app\|lib\|test', 'test', '')
"  endfunction
"  " File Test All Files
"  nnoremap <silent> ,ftaf :wa<return>:! rails t<return>
"  " File Test All Files in terminal
"  nnoremap <silent> ,ftaF :wa<return>:let @+ = 'rails t'<return>:call OpenTerminalInWindow()<return><C-c><esc>p$a<return>
"
"" Everything below here needs to be refactored
"  
"  
"
"
"  
"  
"" File Paste
"  " File Paste Partial Path
"  nnoremap ,fppp :let @+ = expand('%:h')<return>$a<return><esc>p<up>$/app\/views\/<return>cgn<esc>^v$<left>xi<backspace><esc>0/ChangePartialPath<return>viwp
"
"" File Copy
"  " File Copy File Name
"  nnoremap ,fcfn :let @+ = expand("%:t:r")<return>
"  " File Copy Current Path
"  nnoremap ,fccp :let @+ = expand('%:h') . '/'<return>
"  " File Copy Current File
"  nnoremap ,fccf :let @+ = expand('%')<return>
"  " File Copy Partial Path
"  nnoremap ,fcpp :let @+ = expand('%:h')<return>$a<return><esc>p<up>/app\/views\/<return>cgn<esc>^v$<left>xi<backspace><esc>
"  " File Copy Partial File
"  nnoremap ,fcpf :let @+ = expand('%')<return>$a<return><esc>p<up>/app\/views\/<return>cgn<esc>dd
"  " File Copy Rails Test
"  nnoremap ,fcrt :let @+ = expand('%')<return>$a<return><esc>p<up>$/test<return>cgn rails t test<esc>0C<backspace><esc>:noh<return>:w<return>
"
"" File Paste
"  " File Paste Partial Path
"  nnoremap ,fppp :let @+ = expand('%:h')<return>$a<return><esc>p<up>$/app\/views\/<return>cgn<esc>^v$<left>xi<backspace><esc>0/ChangePartialPath<return>viwp
"
"" File Copy
"  " File Copy File Name
"  nnoremap ,fcfn :let @+ = expand("%:t:r")<return>
"  " File Copy Current Path
"  nnoremap ,fccp :let @+ = expand('%:h') . '/'<return>
"  " File Copy Current File
"  nnoremap ,fccf :let @+ = expand('%')<return>
"  " File Copy Partial Path
"  nnoremap ,fcpp :let @+ = expand('%:h')<return>$a<return><esc>p<up>/app\/views\/<return>cgn<esc>^v$<left>xi<backspace><esc>
"  " File Copy Partial File
"  nnoremap ,fcpf :let @+ = expand('%')<return>$a<return><esc>p<up>/app\/views\/<return>cgn<esc>dd
"  " File Copy Rails Test
"  nnoremap ,fcrt :let @+ = expand('%')<return>$a<return><esc>p<up>$/test<return>cgn rails t test<esc>0C<backspace><esc>:noh<return>:w<return>
"
"" File Edit basics
"  " File Edit SEarch
"  nnoremap ,fese :e **/*
"  " File Edit Current Path
"  nnoremap ,fecp :let @+ = expand('%:h') . '/'<return>:e <C-R><C-R>+<space><backspace>
"  " File Edit Current File
"  nnoremap ,fecf :let @+ = expand('%')<return>:e <C-R><C-R>+
"  " File Edit CLipboard
"  nnoremap ,fecl :e <C-R><C-R>+<space><backspace>
"
"" File Edit Stylesheet
"  " File Edit Stylesheet to Controller
"  "
"  " File Edit Stylesheet to Helper
"  "
"  " File Edit Stylesheet to Javascript pack
"  "
"" File Edit Controller
"  " File Edit Controller to Stylesheet
"  "
"  " File Edit Controller to Javascript pack
"  "
"  " File Edit Controller to Model
"  nnoremap ,fecm :let @+ = expand("%")<return>$a<return><esc>p<up>/controllers<return>cgnmodels<esc><up>/_controller.rb<return>cgn/<esc>dd:e <C-R><C-R>+
"
"" File Edit Helper
"  " File Edit Helper to Stylesheet
"  "
"  " File Edit Helper to Javascript
"  "
"
"" File Edit Javascript
"  " File Edit Javascript pack to Stylesheet
"  "
"  " File Edit Javascript pack to Controller
"  "
"  " File Edit Javascript pack to Helper
"  "
"  " File Edit Javascript pack to View
"  "
"
"" File Edit Job
"
"" File Edit Mailer
"  " File Edit Mailer to View
"  nnoremap ,feMv :let @+ = expand("%")<return>$a<return><esc>pO<esc>/mailers<return>cgnviews<esc>/.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
"  " File Edit Mailer to Preview
"  nnoremap ,feMp :let @+ = expand("%")<return>$a<return><esc>pO<esc>/app<return>cgntest<esc>/mailers<return>cgnmailers/previews<esc>/.rb<return>cgn_preview.rb<esc><up>dddd:e <C-R><C-R>+
"  
"" File Edit Model
"  " File Edit Model to sub Model
"  nnoremap ,fems :let @+ = expand("%")<return>$a<return><esc>p<up>$/\.rb<return>cgn/<esc>dd:e <C-R><C-R>+
"  " File Edit Model to Fixture
"  nnoremap ,femf :let @+ = expand("%:h")<return>$a<return><esc>p0/app<return>cgntest/fixtures<esc>/models\/<return>cgn<esc>dd:e <C-R><C-R>+/
"
"" File Edit View
"  " File Edit View to Javascript pack
"  nnoremap ,fevJ :let @+ = expand('%')<return>$a<return><esc>p<up><esc>/views<return>cgnjavascript/packs<esc>/html\.erb<return>cgnjs<esc>dd:e <C-R><C-R>+
"  " File Edit View to Mailer
"  nnoremap ,fevM :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/views<return>cgnmailers<esc>A.rb<esc><up>dddd:e <C-R><C-R>+
"  " File Edit View to mailer Preview
"  nnoremap ,fevp :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/app\/views<return>cgntest/mailers/previews<esc>A_preview.rb<esc><up>dddd:e <C-R><C-R>+
"  " File Edit View to View
"  nmap ,fevv ,fecp
"  " File Edit View to (controller) Test
"  nnoremap ,fevt :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/app\/views<return>cgntest/controllers<esc>A_controller_test.rb<esc><up>dddd:e <C-R><C-R>+
"  " File Edit View to (mailer) tEst
"  nnoremap ,feve :let @+ = expand('%:h')<return>$a<return><esc>p<up>/app\/views<return>cgntest/mailers<esc>A_test.rb<esc>dd:e <C-R><C-R>+
"  
"" File Edit Task
"
"" File Edit Service
"
"" File Edit Lib files
"
"" File Edit Test
"  " File Edit Test to View (for controller and mailer tests)
"  nnoremap ,fetv :let @+ = expand("%")<return>$a<return><esc>p<up>/test<return>cgnapp<esc><up>/controllers\\|mailers<return>cgnviews<esc><up>/_controller_test.rb<return>cgn/<esc>dd:e <C-R><C-R>+
"  " File Edit Test to mailer Preview
"  nnoremap ,fetp :let @+ = expand("%")<return>$a<return><esc>p$a<return><esc>/mailers<return>Ncgnmailers/previews<esc>/_test<return>cgn_preview<esc><down>dd<up>dd:e <C-R><C-R>+
"  " File Edit (model) Test to fixture
"  "nnoremap ,fetf :let @+ = expand("%:h")<return>$a<return><esc>p0/test<return>Ncgntest/fixtures<esc>/models\/<return>cgn<esc>dd:e <C-R><C-R>+/
"
"" File Edit Preview
"  " File Edit Preview to View
"  nnoremap ,fepv :let @+ = expand("%")<return>$a<return><esc>pO<esc>/test\/mailers\/previews<return>cgnapp/views<esc>/_preview.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
"  " File Edit Preview to Mailer
"  nnoremap ,fepM :let @+ = expand("%")<return>$a<return><esc>pO<esc>/test\/mailers\/previews<return>cgnapp/mailers<esc>/_preview<return>cgn<esc><up>dddd:e <C-R><C-R>+
"  " File Edit Preview to Test
"  nnoremap ,fept :let @+ = expand("%")<return>$a<return><esc>p<up>/\/previews<return>cgn<esc><up>/_preview<return>cgn_test<esc>dd:e <C-R><C-R>+
"  
"" File Edit Fixtture
"  " File Edit Fixture to Model
"  nnoremap ,fefm :let @+ = expand("%:h")<return>$a<return><esc>p0/test\/fixtures<return>cgnapp/models<esc>dd:e <C-R><C-R>+/
"  " File Edit Fixture to (model) Test
"  nnoremap ,feft :let @+ = expand("%:h")<return>$a<return><esc>p0/fixtures<return>cgnmodels<esc>dd:e <C-R><C-R>+/
"
"
"
"" File edit specific files and paths (NEEDS CLEANING)
"nmap <silent> ,ftaas <space>fT/app<return><return>/assets<return><return><esc>:noh<return>
"nnoremap <silent> ,faas :edit app/assets/<space><backspace>
"" Edit App Assets Css (stylesheets)
"nmap <silent> ,ftaaS <space>fT/app<return><return>/assets<return><return>/stylesheets<return><return><esc>:noh<return>
"nnoremap <silent> ,faaS :edit app/assets/stylesheets/<space><backspace>
""
"nmap <silent> ,ftach <space>fT/app<return><return>/channels<return><return><esc>:noh<return>
"nnoremap <silent> ,fach :edit app/channels/<space><backspace>
""
""nmap <silent> ,ftaco <space>fT/app<return><return>/controllers<return><return><esc>:noh<return>
"nmap <silent> ,ftaco :e app/controllers/
"nnoremap <silent> ,faco :edit app/controllers/<space><backspace>
""
"nmap <silent> ,ftahe <space>fT/app<return><return>/helpers<return><return><esc>:noh<return>
"nnoremap <silent> ,fahe :edit app/helpers/<space><backspace>
""
"nmap <silent> ,ftaJa <space>fT/app<return><return>/javascript<return><return><esc>:noh<return>
"nnoremap <silent> ,faJa :edit app/javascript/<space><backspace>
""
"nmap <silent> ,ftaJp <space>fT/app<return><return>/javascript<return><return>/packs<return><return><esc>:noh<return>
"nnoremap <silent> ,faJp :edit app/javascript/packs/<space><backspace>
"nnoremap <silent> ,faJs :edit app/javascript/packs/lib/show_edit_swap.js.erb<return>
""
"nmap <silent> ,ftajo <space>fT/app<return><return>/jobs<return><return><esc>:noh<return>
"nnoremap <silent> ,fajo :edit app/jobs/<space><backspace>
"" Edit App/MAilers
"nmap <silent> ,ftaMa <space>fT/app<return><return>/mailers<return><return><esc>:noh<return>
"nnoremap <silent> ,faMa :edit app/mailers/<space><backspace>
"" Edit App/MOddels
"nmap <silent> ,ftamo <space>fT/app<return><return>/models<return><return><esc>:noh<return>
"nnoremap <silent> ,famo :edit app/models/<space><backspace>
"" Edit App/Mddels/aBility.rb Cancancan
"nmap <silent> ,famc :e app/models/ability.rb<return>
""
"nmap <silent> ,ftavi <space>fT/app<return><return>/views<return><return><esc>:noh<return>
"nnoremap <silent> ,favi :edit app/views/<space><backspace>
""
"nmap <silent> ,ftcon <space>fT/config<return><return><esc>:noh<return>
"nnoremap <silent> ,fcon :edit config/<space><backspace>
""
"nnoremap <silent> ,fcro :edit config/routes.rb<return>
""
"nnoremap <silent> ,fdsc :edit db/schema.rb<return>
""
"nmap <silent> ,ftdse <space>fT/db<return><return>/seeds<return><return><esc>:noh<return>
"nnoremap <silent> ,fdse :edit db/seeds.rb<return>
""
"nmap <silent> ,ftdmi <space>fT/db<return><return>/migrate<return><return><esc>:noh<return>
"nnoremap <silent> ,fdmi :edit db/migrate/<space><backspace>
""
"nmap <silent> ,ftlib <space>fT/lib<return><return><esc>:noh<return>
"nnoremap <silent> ,flib :edit lib/<space><backspace>
""
"nmap <silent> ,fttes <space>fT/test<return><return><esc>:noh<return>
"nnoremap <silent> ,ftes :edit test/<space><backspace>
""
"nmap <silent> ,fttco <space>fT/test<return><return>/controllers<return><return><esc>:noh<return>
"nnoremap <silent> ,ftco :edit test/controllers/<space><backspace>
""
"nmap <silent> ,fttmo <space>fT/test<return><return>/models<return><return><esc>:noh<return>
"nnoremap <silent> ,ftmo :edit test/models/<space><backspace>
"" File Test FIxtures
"nmap <silent> ,fttfi <space>fT/test<return><return>/fixtures<return><return><esc>:noh<return>
"nnoremap <silent> ,ftfi :edit test/fixtures/<space><backspace>
"" File Test Mailers
"nmap <silent> ,fttma <space>fT/test<return><return>/mailers<return><return><esc>:noh<return>
"nnoremap <silent> ,ftma :edit test/fixtures/mailers/<space><backspace>
"" File Test Mailers Previews
"nmap <silent> ,fttmp <space>fT/test<return><return>/mailers<return><return>/previews<return><return><esc>:noh<return>
"nnoremap <silent> ,ftmp :edit test/fixtures/mailers/previews/<space><backspace>
""
"nmap <silent> ,ftven <space>fT/vendor<return><return><esc>:noh<return>
"nnoremap <silent> ,fven :edit vendor/<space><backspace>
"" Edit GEMfile
"nmap <silent> ,fgem <space>fT/Gemfile<return><return><esc>:noh<return>
"" Edit REAdme
"nmap <silent> ,frea <space>fT/README.md<return><return><esc>:noh<return>
