" File Paste
  " File Paste Partial Path
  nnoremap ,fppp :let @+ = expand('%:h')<return>$a<return><esc>p<up>$/app\/views\/<return>cgn<esc>^v$<left>xi<backspace><esc>0/ChangePartialPath<return>viwp
" File Copy
  " File Copy Current Path
  nnoremap ,fccp :let @+ = expand('%:h') . '/'<return>
  " File Copy Current File
  nnoremap ,fccf :let @+ = expand('%')<return>
  " File Copy Partial Path
  nnoremap ,fcpp :let @+ = expand('%:h')<return>$a<return><esc>p<up>/app\/views\/<return>cgn<esc>^v$<left>xi<backspace><esc>
  " File Copy Partial File
  nnoremap ,fcpf :let @+ = expand('%')<return>$a<return><esc>p<up>/app\/views\/<return>cgn<esc>dd
  " File Copy Rails Test
  nnoremap ,fcrt :let @+ = expand('%')<return>$a<return><esc>p<up>$/test<return>cgn rails t test<esc>0C<backspace><esc>:noh<return>

" File Edit basics
  " File Edit SEarch
  nnoremap ,fese :e **/*
  " File Edit Current Path
  nnoremap ,fecp :let @+ = expand('%:h') . '/'<return>:e <C-R><C-R>+<space><backspace>
  " File Edit Current File
  nnoremap ,fecf :let @+ = expand('%')<return>:e <C-R><C-R>+
  " File Edit CLipboard
  nnoremap ,fecl :e <C-R><C-R>+<space><backspace>

" File Edit Stylesheet
  " File Edit Stylesheet to Controller
  "
  " File Edit Stylesheet to Helper
  "
  " File Edit Stylesheet to Javascript pack
  "
  " File Edit Stylesheet to View
  nnoremap ,feSv :let @+ = expand("%")<return>$a<return><esc>p$a<return><esc>/assets\/stylesheets<return>cgnviews<esc>/scss<return>cgnhtml.erb<esc><up>dddd:e <c-r><c-r>+
  " File Edit Stylesheet to (controller) Test
  "
" File Edit Controller
  " File Edit Controller to Stylesheet
  "
  " File Edit Controller to Helper
  nnoremap ,fech :let @+ = expand("%")<return>$a<return><esc>pO<esc>/controllers<return>cgnhelpers<esc>/_controller.rb<return>cgn_helper.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit Controller to Javascript pack
  "
  " File Edit Controller to Model
  nnoremap ,fecm :let @+ = expand("%")<return>$a<return><esc>p<up>/controllers<return>cgnmodels<esc><up>/_controller.rb<return>cgn/<esc>dd:e <C-R><C-R>+
  " File Edit Controller to View
  nnoremap ,fecv :let @+ = expand("%")<return>$a<return><esc>p<up>/controllers<return>cgnviews<esc><up>/_controller.rb<return>cgn/<esc>dd:e <C-R><C-R>+
  " File Edit Controller to (controller) Test
  nnoremap ,fect :let @+ = expand("%")<return>$a<return><esc>p<up>/app<return>cgntest<esc><up>/_controller.rb<return>cgn_controller_test.rb<esc>dd:e <C-R><C-R>+

" File Edit Helper
  " File Edit Helper to Stylesheet
  "
  " File Edit Helper to Controller
  nnoremap ,fehc :let @+ = expand("%")<return>$a<return><esc>pO<esc>/helpers<return>cgncontrollers<esc>/_helper.rb<return>cgn_controller.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit Helper to Javascript
  "
  " File Edit Helper to View
  nnoremap ,fehv :let @+ = expand("%")<return>$a<return><esc>pO<esc>/helpers<return>cgnviews<esc>/_helper.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
  " File Edit Helper to (helper) Test
  nnoremap ,feht :let @+ = expand("%")<return>$a<return><esc>p<up>$/app<return>cgntest<esc>/_helper.rb<return>cgn_helper_test.rb<esc>dd:e <C-R><C-R>+

" File Edit Javascript
  " File Edit Javascript pack to Stylesheet
  "
  " File Edit Javascript pack to Controller
  "
  " File Edit Javascript pack to Helper
  "
  " File Edit Javascript pack to View
  "
  " File Edit Javascript pack to (controller) Test
  "

" File Edit Job
  " File Edit Job to (job) Test
  nnoremap ,fejt :let @+ = expand("%")<return>$a<return><esc>p<up>/app<return>cgntest<esc><up>/_job.rb<return>cgn_job_test.rb<esc>dd:e <C-R><C-R>+

" File Edit Mailer
  " File Edit Mailer to View
  nnoremap ,feMv :let @+ = expand("%")<return>$a<return><esc>pO<esc>/mailers<return>cgnviews<esc>/.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
  " File Edit Mailer to Test
  nnoremap ,feMt :let @+ = expand("%")<return>$a<return><esc>pO<esc>/app<return>cgntest<esc>/.rb<return>cgn_test.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit Mailer to Preview
  nnoremap ,feMp :let @+ = expand("%")<return>$a<return><esc>pO<esc>/app<return>cgntest<esc>/mailers<return>cgnmailers/previews<esc>/.rb<return>cgn_preview.rb<esc><up>dddd:e <C-R><C-R>+
  
" File Edit Model
  " File Edit Model to sub Model
  nnoremap ,fems :let @+ = expand("%")<return>$a<return><esc>p<up>$/\.rb<return>cgn/<esc>dd:e <C-R><C-R>+
  " File Edit Model to (model) Test
  nnoremap ,femt :let @+ = expand("%")<return>$a<return><esc>p<up>$/app<return>cgntest<esc>/.rb<return>cgn_test.rb<esc>dd:e <C-R><C-R>+
  " File Edit Model to Fixture
  nnoremap ,femf :let @+ = expand("%:h")<return>$a<return><esc>p0/app<return>cgntest/fixtures<esc>/models\/<return>cgn<esc>dd:e <C-R><C-R>+/

" File Edit View
  " File Edit View to Stylesheet
  nnoremap ,fevs :let @+ = expand('%')<return>$a<return><esc>p0/views<return>cgnassets/stylesheets<esc>0/html.erb<return>cgnscss<esc>dd:e <C-R><C-R>+
  " File Edit View to Controller
  nnoremap ,fevc :let @+ = expand('%:h')<return>$a<return><esc>p<up>/views<return>cgncontrollers<esc>A_controller.rb<esc>dd:e <C-R><C-R>+
  " File Edit View to Helper
  nnoremap ,fevh :let @+ = expand('%:h')<return>$a<return><esc>p0/views<return>cgnhelpers<esc>A_helper.rb<esc>dd:e <C-R><C-R>+
  " File Edit View to Javascript pack
  nnoremap ,fevj :let @+ = expand('%')<return>$a<return><esc>p<up><esc>/views<return>cgnjavascript/packs<esc>/html\.erb<return>cgnjs<esc>dd:e <C-R><C-R>+
  " File Edit View to Mailer
  nnoremap ,fevM :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/views<return>cgnmailers<esc>A.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit View to mailer Preview
  nnoremap ,fevp :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/app\/views<return>cgntest/mailers/previews<esc>A_preview.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit View to View
  nmap ,fevv ,fecp
  " File Edit View to (controller) Test
  nnoremap ,fevt :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/app\/views<return>cgntest/controllers<esc>A_controller_test.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit View to (mailer) tEst
  nnoremap ,feve :let @+ = expand('%:h')<return>$a<return><esc>p<up>/app\/views<return>cgntest/mailers<esc>A_test.rb<esc>dd:e <C-R><C-R>+
  
" File Edit Task
  " File Edit Task to Test
  nnoremap ,feTt :let @+ = expand('%')<return>$a<return><esc>p<up>$/lib<return>cgntest<esc>/\.rake<return>cgn_task_test.rb<esc>dd:e <C-R><C-R>+

" File Edit Lib files
  " File Edit Libe file to Test
  nnoremap ,felt :let @+ = expand('%')<return>$a<return><esc>p<up>$/lib<return>cgntest<esc>/\.rb<return>cgn_test.rb<esc>dd:e <C-R><C-R>+

" File Edit Test
  " File Edit Test to Controller
  nnoremap ,fetc :let @+ = expand("%")<return>$a<return><esc>p<up>/test<return>cgnapp<esc>ncgn<backspace><esc>dd:e <c-r><c-r>+
  " File Edit Test to Model
  nnoremap ,fetm :let @+ = expand("%")<return>$a<return><esc>p0/test<return>Ncgnapp<esc>/_test<return>cgn<esc>dd:e <C-R><C-R>+
  " File Edit Test to Helper
  "
  " File Edit Test to Job
  nnoremap ,fetj :let @+ = expand("%")<return>$a<return><esc>p<up>/test<return>cgnapp<esc><up>/_test<return>cgn<esc>dd:e <c-r><c-r>+
  " File Edit Test to Mailer
  nnoremap ,fetM :let @+ = expand("%")<return>$a<return><esc>p$a<return><esc>/test<return>NNcgnapp<esc>ncgn<backspace><esc><down>dd<up>dd:e <C-R><C-R>+
  " File Edit Test to View (for controller and mailer tests)
  nnoremap ,fetv :let @+ = expand("%")<return>$a<return><esc>p<up>/test<return>cgnapp<esc><up>/controllers\\|mailers<return>cgnviews<esc><up>/_controller_test.rb<return>cgn/<esc>dd:e <C-R><C-R>+
  " File Edit Test to mailer Preview
  nnoremap ,fetp :let @+ = expand("%")<return>$a<return><esc>p$a<return><esc>/mailers<return>Ncgnmailers/previews<esc>/_test<return>cgn_preview<esc><down>dd<up>dd:e <C-R><C-R>+
  " File Edit (model) Test to fixture
  nnoremap ,fetf :let @+ = expand("%:h")<return>$a<return><esc>p0/test<return>Ncgntest/fixtures<esc>/models\/<return>cgn<esc>dd:e <C-R><C-R>+/
  " File Edit (task) Test to Task
  nnoremap ,fetT :let @+ = expand("%")<return>$a<return><esc>p<up>/test<return>cgnlib<esc>/_task_test\.rb<return>cgn.rake<esc>dd:e <C-R><C-R>+
  " File Edit Test to Lib file
  nnoremap ,fetl :let @+ = expand("%")<return>$a<return><esc>p<up>/test<return>cgnlib<esc>/_task_test\.rb<return>cgn.rake<esc>dd:e <C-R><C-R>+

" File Edit Preview
  " File Edit Preview to View
  nnoremap ,fepv :let @+ = expand("%")<return>$a<return><esc>pO<esc>/test\/mailers\/previews<return>cgnapp/views<esc>/_preview.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
  " File Edit Preview to Mailer
  nnoremap ,fepM :let @+ = expand("%")<return>$a<return><esc>pO<esc>/test\/mailers\/previews<return>cgnapp/mailers<esc>/_preview<return>cgn<esc><up>dddd:e <C-R><C-R>+
  " File Edit Preview to Test
  nnoremap ,fept :let @+ = expand("%")<return>$a<return><esc>p<up>/\/previews<return>cgn<esc><up>/_preview<return>cgn_test<esc>dd:e <C-R><C-R>+
  
" File Edit Fixtture
  " File Edit Fixture to Model
  nnoremap ,fefm :let @+ = expand("%:h")<return>$a<return><esc>p0/test\/fixtures<return>cgnapp/models<esc>dd:e <C-R><C-R>+/
  " File Edit Fixture to (model) Test
  nnoremap ,feft :let @+ = expand("%:h")<return>$a<return><esc>p0/fixtures<return>cgnmodels<esc>dd:e <C-R><C-R>+/

" File edit specific files and paths (NEEDS CLEANING)
nmap <silent> ,ftaas <space>fT/app<return><return>/assets<return><return><esc>:noh<return>
nnoremap <silent> ,faas :edit app/assets/<space><backspace>
" Edit App Assets Css (stylesheets)
nmap <silent> ,ftaac <space>fT/app<return><return>/assets<return><return>/stylesheets<return><return><esc>:noh<return>
nnoremap <silent> ,faac :edit app/assets/stylesheets/<space><backspace>
"
nmap <silent> ,ftach <space>fT/app<return><return>/channels<return><return><esc>:noh<return>
nnoremap <silent> ,fach :edit app/channels/<space><backspace>
"
"nmap <silent> ,ftaco <space>fT/app<return><return>/controllers<return><return><esc>:noh<return>
nmap <silent> ,ftaco :e app/controllers/
nnoremap <silent> ,faco :edit app/controllers/<space><backspace>
"
nmap <silent> ,ftahe <space>fT/app<return><return>/helpers<return><return><esc>:noh<return>
nnoremap <silent> ,fahe :edit app/helpers/<space><backspace>
"
nmap <silent> ,ftaja <space>fT/app<return><return>/javascript<return><return><esc>:noh<return>
nnoremap <silent> ,faja :edit app/javascript/<space><backspace>
"
nmap <silent> ,ftajp <space>fT/app<return><return>/javascript<return><return>/packs<return><return><esc>:noh<return>
nnoremap <silent> ,fajp :edit app/javascript/packs/<space><backspace>
nnoremap <silent> ,fajs :edit app/javascript/packs/lib/show_edit_swap.js.erb<return>
"
nmap <silent> ,ftajo <space>fT/app<return><return>/jobs<return><return><esc>:noh<return>
nnoremap <silent> ,fajo :edit app/jobs/<space><backspace>
" Edit App/MAilers
nmap <silent> ,ftaMa <space>fT/app<return><return>/mailers<return><return><esc>:noh<return>
nnoremap <silent> ,faMa :edit app/mailers/<space><backspace>
" Edit App/MOddels
nmap <silent> ,ftamo <space>fT/app<return><return>/models<return><return><esc>:noh<return>
nnoremap <silent> ,famo :edit app/models/<space><backspace>
" Edit App/Mddels/aBility.rb Cancancan
nmap <silent> ,famc :e app/models/ability.rb<return>
"
nmap <silent> ,ftavi <space>fT/app<return><return>/views<return><return><esc>:noh<return>
nnoremap <silent> ,favi :edit app/views/<space><backspace>
"
nmap <silent> ,ftcon <space>fT/config<return><return><esc>:noh<return>
nnoremap <silent> ,fcon :edit config/<space><backspace>
"
nnoremap <silent> ,fcro :edit config/routes.rb<return>
"
nnoremap <silent> ,fdsc :edit db/schema.rb<return>
"
nmap <silent> ,ftdse <space>fT/db<return><return>/seeds<return><return><esc>:noh<return>
nnoremap <silent> ,fdse :edit db/seeds.rb<return>
"
nmap <silent> ,ftdmi <space>fT/db<return><return>/migrate<return><return><esc>:noh<return>
nnoremap <silent> ,fdmi :edit db/migrate/<space><backspace>
"
nmap <silent> ,ftlib <space>fT/lib<return><return><esc>:noh<return>
nnoremap <silent> ,flib :edit lib/<space><backspace>
"
nmap <silent> ,fttes <space>fT/test<return><return><esc>:noh<return>
nnoremap <silent> ,ftes :edit test/<space><backspace>
"
nmap <silent> ,fttco <space>fT/test<return><return>/controllers<return><return><esc>:noh<return>
nnoremap <silent> ,ftco :edit test/controllers/<space><backspace>
"
nmap <silent> ,fttmo <space>fT/test<return><return>/models<return><return><esc>:noh<return>
nnoremap <silent> ,ftmo :edit test/models/<space><backspace>
" File Test FIxtures
nmap <silent> ,fttfi <space>fT/test<return><return>/fixtures<return><return><esc>:noh<return>
nnoremap <silent> ,ftfi :edit test/fixtures/<space><backspace>
" File Test Mailers
nmap <silent> ,fttma <space>fT/test<return><return>/mailers<return><return><esc>:noh<return>
nnoremap <silent> ,ftma :edit test/fixtures/mailers/<space><backspace>
" File Test Mailers Previews
nmap <silent> ,fttmp <space>fT/test<return><return>/mailers<return><return>/previews<return><return><esc>:noh<return>
nnoremap <silent> ,ftmp :edit test/fixtures/mailers/previews/<space><backspace>
"
nmap <silent> ,ftven <space>fT/vendor<return><return><esc>:noh<return>
nnoremap <silent> ,fven :edit vendor/<space><backspace>
" Edit GEMfile
nmap <silent> ,fgem <space>fT/Gemfile<return><return><esc>:noh<return>
" Edit REAdme
nmap <silent> ,frea <space>fT/README.md<return><return><esc>:noh<return>
