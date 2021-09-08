" Simple File Mappings
  " File Delete 
  nnoremap <silent> <space>fd :call FileDelete()<return>
  function! FileDelete()
    let current_file = expand('%')
    let confirmation = input("Delete file at: " . current_file . "\"? (y/n): ") 
    if confirmation == 'y'
      call delete(expand('%')) | bdelete!
    endif
  endfunction
  " File Move
  nnoremap <silent> <space>fm :call FileMove()<return>
  function! FileMove()
    wa
    let current_file = expand('%')
    let new_file = input("Move \"" . current_file . "\" to: ", current_file) 
    if current_file == new_file
      echo "\nDestination path be the same as current path. Please try again."
    elseif filereadable(new_file)
      echo "\nFile already exists at \"" . new_file '". Please try a different destination path.'
    else
      execute "e " . new_file
      normal aa
      w
      execute "! mv " . current_file . ' ' . new_file
      execute "bd " . current_file
      wa
    endif 
  endfunction
  " File Save (all)
  nnoremap <silent> <space>fs :wa<return>
  " File Save (single)
  nnoremap <silent> <space>fS :w<return>
  " File Explore
  nnoremap <silent> <space>fx :Explore<return>

" File Paste
  " File Paste Partial Path
  nnoremap <silent> <space>fppp :let @+ = expand('%:h')<return>$a<return><esc>p<up>$/app\/views\/<return>cgn<esc>^v$<left>xi<backspace><esc>0/ChangePartialPath<return>viwp

" File Copy
  " File Copy File Name
  nnoremap <silent> <space>fcfn :let @+ = expand("%:t:r")<return>
  " File Copy Current Path
  nnoremap <silent> <space>fccp :let @+ = expand('%:h') . '/'<return>
  " File Copy Current File
  nnoremap <silent> <space>fccf :let @+ = expand('%')<return>
  function! FileCopyCurrentFile()
    let @+ = expand('%')
  endfunction
  " File Copy Partial Path
  nnoremap <silent> <space>fcpp :let @+ = expand('%:h')<return>$a<return><esc>p<up>/app\/views\/<return>cgn<esc>^v$<left>xi<backspace><esc>
  " File Copy Partial File
  nnoremap <silent> <space>fcpf :let @+ = expand('%')<return>$a<return><esc>p<up>/app\/views\/<return>cgn<esc>dd
  " File Copy Rails Test
  nnoremap <silent> <space>fcrt :let @+ = expand('%')<return>$a<return><esc>p<up>$/test<return>cgn rails t test<esc>0C<backspace><esc>:noh<return>:w<return>

" File Edit (and Explore)
  " File Edit SEarch
  nnoremap <silent> <space>fese :e **/*
  " File Edit Current Path
  nnoremap <silent> <space>fecp :let @+ = expand('%:h') . '/'<return>:e <C-R><C-R>+<space><backspace>
  " File Edit Current File
  nnoremap <silent> <space>fecf :let @+ = expand('%')<return>:e <C-R><C-R>+
  " File Edit CLipboard
  nnoremap <silent> <space>fecl :e <C-R><C-R>+<space><backspace>
  " File Edit Style Sheet
  nnoremap <silent> <space>fess :call FileEditStyleSheet()<return>
  function FileEditStyleSheet()
    let current_file = expand('%')
    if match(current_file, 'app/assets/stylesheets') != -1
      let file = 'on style sheet'
    elseif match(current_file, 'app/controllers') != -1
      let file = substitute(expand('%'), 'controllers', 'assets/stylesheets', '')
      let file = substitute(file, '_controller.rb', '', '')
    elseif match(current_file, 'app/views') != -1
      let file = substitute(expand('%:h'), 'views', 'assets/stylesheets', '')
    elseif match(current_file, 'app/helpers') != -1
      let file = substitute(expand('%'), 'helpers', 'assets/stylesheets', '')
      let file = substitute(file, '_helper.rb', '', '')
    else 
      let file = 1
    endif
    if file == 'on style sheet'
      echo 'Already on style sheet file'
    elseif file == 1
      echo 'Unable to find controller for' current_file
    else
      execute ':e' file
    endif
  endfunction

  " File Edit COntroller
  nnoremap <silent> <space>feco :call FileEditController()<return>
  function FileEditController()
    let current_file = expand('%')
    if match(current_file, 'app/controllers') != -1
      let file = 'on controller'
    elseif match(current_file, 'app/views') != -1
      let file = substitute(expand('%:h'), 'views', 'controllers', '') . '_controller.rb'
    elseif match(current_file, 'app/helpers') != -1
      let file = substitute(expand('%'), 'helpers', 'controllers', '')
      let file = substitute(file, '_helper.rb', '_controller.rb', '')
    else 
      let file = 1
    endif
    if file == 'on controller'
      echo 'Already on controller file'
    elseif file == 1
      echo 'Unable to find controller for' current_file
    else
      execute ':e' file
    endif
  endfunction
  " File Edit HElper
  nnoremap <silent> <space>fehe :call FileEditHelper()<return>
  function FileEditHelper()
    let current_file = expand('%')
    if match(current_file, 'app/helpers') != -1
      let file = 'on helper'
    elseif match(current_file, 'app/controllers') != -1
      let file = substitute(current_file, 'controllers', 'helpers', '')
      let file = substitute(file, '_controller.rb', '_helper.rb', '')
    elseif match(current_file, 'app/views') != -1
      let file = substitute(expand('%:h'), 'views', 'helpers', '') . '_helper.rb'
    else 
      let file = 1
    endif
    if file == 'on helper'
      echo 'Already on helper file'
    elseif file == 1
      echo 'Unable to find helper for' current_file
    else
      execute ':e' file
    endif
  endfunction
  " File Edit VIew
  nnoremap <silent> <space>fevi :call FileEditView()<return>
  function FileEditView()
    let current_file = expand('%')
    if match(current_file, 'app/views') != -1
      let file = expand('%:h')
    elseif match(current_file, 'app/assets/stylesheets') != -1
      let file = substitute(expand('%:h'), 'assets/stylesheets', 'views', '')
    elseif match(current_file, 'app/controllers') != -1
      let file = substitute(current_file, 'controllers', 'views', '')
      let file = substitute(file, '_controller.rb', '', '')
    elseif match(current_file, 'app/helpers') != -1
      let file = substitute(expand('%'), 'helpers', 'views', '')
      let file = substitute(file, '_helper.rb', '', '')
    else 
      let file = 1
    endif
    if file == 1
      echo 'Unable to find views for' current_file
    else
      execute ':Explore' file
    endif
  endfunction
  " File Edit TEst
  nnoremap <silent> <space>fete :call FileEditTest()<return>
  function FileEditTest()
    execute ':e' GetTestFileName()
  endfunction
  " File Edit Test Source
  nnoremap <silent> <space>fets :call FileEditTestSource()<return>
  function FileEditTestSource()
    let current_file = expand('%')
    let file = substitute(current_file, '_test.rb', '.rb', '')
    if match(file, 'controller\|helper\|job\|mailer\|model') != -1
      let file = substitute(file, 'test', 'app', '')
    else
      let file = substitute(file, 'test', 'lib', '')
    endif
    execute ':e' file
  endfunction
  " File Edit Schema
  nnoremap <silent> <space>fesc :e db/schema.rb<return>
  " File Edit ROutes
  nnoremap <silent> <space>fero :e config/routes.rb<return>
  " File Edit ABility
  nnoremap <silent> <space>feab :e app/models/ability.rb<return>
  " File Edit GEmfile
  nnoremap <silent> <space>fege :e Gemfile<return>
  " File Edit REadme
  nnoremap <silent> <space>fere :e README.md<return>
  "

" File Test
  " File Test Current File
  nnoremap <silent> <space>ftcf :call FileTestCurrentFile(0)<return>
  " File Test Current File in terminal
  nnoremap <silent> <space>ftcF :call FileTestCurrentFile(1)<return>:call OpenTerminalInWindow()<return><C-c><esc>p$a<return>
  function! FileTestCurrentFile(use_shell)
    execute ':wa'
    let test_file = GetTestFileName()
    let command = substitute(test_file, 'test', 'rails t test', '')
    if a:use_shell == 0
      execute ':!' command
    else 
      let @+ = command
    endif
  endfunction
  function! GetTestFileName()
    let file = expand('%')
    " modify file name for non test files
    if index(split(file, '/'), 'test') == -1
      let file = substitute(file, '.rb', '_test.rb', '')
    endif
    return substitute(file, 'app\|lib\|test', 'test', '')
  endfunction
  " File Test All Files
  nnoremap <silent> <space>ftaf :wa<return>:! rails t<return>
  " File Test All Files in terminal
  nnoremap <silent> <space>ftaF :wa<return>:let @+ = 'rails t'<return>:call OpenTerminalInWindow()<return><C-c><esc>p$a<return>

  
  
  
  
  
" Everything below here needs to be refactored
  

" File Edit Mailer
  " File Edit Mailer to View
  nnoremap <silent> <space>feMv :let @+ = expand("%")<return>$a<return><esc>pO<esc>/mailers<return>cgnviews<esc>/.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
  " File Edit Mailer to Preview
  nnoremap <silent> <space>feMp :let @+ = expand("%")<return>$a<return><esc>pO<esc>/app<return>cgntest<esc>/mailers<return>cgnmailers/previews<esc>/.rb<return>cgn_preview.rb<esc><up>dddd:e <C-R><C-R>+
  
" File Edit Model
  " File Edit Model to Fixture
  nnoremap <silent> <space>femf :let @+ = expand("%:h")<return>$a<return><esc>p0/app<return>cgntest/fixtures<esc>/models\/<return>cgn<esc>dd:e <C-R><C-R>+/

" File Edit View
  " File Edit View to Javascript pack
  nnoremap <silent> <space>fevJ :let @+ = expand('%')<return>$a<return><esc>p<up><esc>/views<return>cgnjavascript/packs<esc>/html\.erb<return>cgnjs<esc>dd:e <C-R><C-R>+
  " File Edit View to Mailer
  nnoremap <silent> <space>fevM :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/views<return>cgnmailers<esc>A.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit View to mailer Preview
  nnoremap <silent> <space>fevp :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/app\/views<return>cgntest/mailers/previews<esc>A_preview.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit View to View
  nmap <silent> <space>fevv <space>fecp
  " File Edit View to (controller) Test
  nnoremap <silent> <space>fevt :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/app\/views<return>cgntest/controllers<esc>A_controller_test.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit View to (mailer) tEst
  nnoremap <silent> <space>feve :let @+ = expand('%:h')<return>$a<return><esc>p<up>/app\/views<return>cgntest/mailers<esc>A_test.rb<esc>dd:e <C-R><C-R>+
  
" File Edit Task

" File Edit Service

" File Edit Lib files

" File Edit Test
  " File Edit Test to View (for controller and mailer tests)
  nnoremap <silent> <space>fetv :let @+ = expand("%")<return>$a<return><esc>p<up>/test<return>cgnapp<esc><up>/controllers\\|mailers<return>cgnviews<esc><up>/_controller_test.rb<return>cgn/<esc>dd:e <C-R><C-R>+
  " File Edit Test to mailer Preview
  nnoremap <silent> <space>fetp :let @+ = expand("%")<return>$a<return><esc>p$a<return><esc>/mailers<return>Ncgnmailers/previews<esc>/_test<return>cgn_preview<esc><down>dd<up>dd:e <C-R><C-R>+
  " File Edit (model) Test to fixture
  "nnoremap <silent> <space>fetf :let @+ = expand("%:h")<return>$a<return><esc>p0/test<return>Ncgntest/fixtures<esc>/models\/<return>cgn<esc>dd:e <C-R><C-R>+/

" File Edit Preview
  " File Edit Preview to View
  nnoremap <silent> <space>fepv :let @+ = expand("%")<return>$a<return><esc>pO<esc>/test\/mailers\/previews<return>cgnapp/views<esc>/_preview.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
  " File Edit Preview to Mailer
  nnoremap <silent> <space>fepM :let @+ = expand("%")<return>$a<return><esc>pO<esc>/test\/mailers\/previews<return>cgnapp/mailers<esc>/_preview<return>cgn<esc><up>dddd:e <C-R><C-R>+
  " File Edit Preview to Test
  nnoremap <silent> <space>fept :let @+ = expand("%")<return>$a<return><esc>p<up>/\/previews<return>cgn<esc><up>/_preview<return>cgn_test<esc>dd:e <C-R><C-R>+
  
" File Edit Fixtture
  " File Edit Fixture to Model
  nnoremap <silent> <space>fefm :let @+ = expand("%:h")<return>$a<return><esc>p0/test\/fixtures<return>cgnapp/models<esc>dd:e <C-R><C-R>+/
  " File Edit Fixture to (model) Test
  nnoremap <silent> <space>feft :let @+ = expand("%:h")<return>$a<return><esc>p0/fixtures<return>cgnmodels<esc>dd:e <C-R><C-R>+/



"" File edit specific files and paths (NEEDS CLEANING)
"nmap <silent> <space>ftaas <space>fT/app<return><return>/assets<return><return><esc>:noh<return>
"nnoremap <silent> <space>faas :edit app/assets/<space><backspace>
"" Edit App Assets Css (stylesheets)
"nmap <silent> <space>ftaaS <space>fT/app<return><return>/assets<return><return>/stylesheets<return><return><esc>:noh<return>
"nnoremap <silent> <space>faaS :edit app/assets/stylesheets/<space><backspace>
""
"nmap <silent> <space>ftach <space>fT/app<return><return>/channels<return><return><esc>:noh<return>
"nnoremap <silent> <space>fach :edit app/channels/<space><backspace>
""
""nmap <silent> <space>ftaco <space>fT/app<return><return>/controllers<return><return><esc>:noh<return>
"nmap <silent> <space>ftaco :e app/controllers/
"nnoremap <silent> <space>faco :edit app/controllers/<space><backspace>
""
"nmap <silent> <space>ftahe <space>fT/app<return><return>/helpers<return><return><esc>:noh<return>
"nnoremap <silent> <space>fahe :edit app/helpers/<space><backspace>
""
"nmap <silent> <space>ftaJa <space>fT/app<return><return>/javascript<return><return><esc>:noh<return>
"nnoremap <silent> <space>faJa :edit app/javascript/<space><backspace>
""
"nmap <silent> <space>ftaJp <space>fT/app<return><return>/javascript<return><return>/packs<return><return><esc>:noh<return>
"nnoremap <silent> <space>faJp :edit app/javascript/packs/<space><backspace>
"nnoremap <silent> <space>faJs :edit app/javascript/packs/lib/show_edit_swap.js.erb<return>
""
"nmap <silent> <space>ftajo <space>fT/app<return><return>/jobs<return><return><esc>:noh<return>
"nnoremap <silent> <space>fajo :edit app/jobs/<space><backspace>
"" Edit App/MAilers
"nmap <silent> <space>ftaMa <space>fT/app<return><return>/mailers<return><return><esc>:noh<return>
"nnoremap <silent> <space>faMa :edit app/mailers/<space><backspace>
"" Edit App/MOddels
"nmap <silent> <space>ftamo <space>fT/app<return><return>/models<return><return><esc>:noh<return>
"nnoremap <silent> <space>famo :edit app/models/<space><backspace>
"" Edit App/Mddels/aBility.rb Cancancan
"nmap <silent> <space>famc :e app/models/ability.rb<return>
""
"nmap <silent> <space>ftavi <space>fT/app<return><return>/views<return><return><esc>:noh<return>
"nnoremap <silent> <space>favi :edit app/views/<space><backspace>
""
"nmap <silent> <space>ftcon <space>fT/config<return><return><esc>:noh<return>
"nnoremap <silent> <space>fcon :edit config/<space><backspace>
""
"nnoremap <silent> <space>fcro :edit config/routes.rb<return>
""
"nnoremap <silent> <space>fdsc :edit db/schema.rb<return>
""
"nmap <silent> <space>ftdse <space>fT/db<return><return>/seeds<return><return><esc>:noh<return>
"nnoremap <silent> <space>fdse :edit db/seeds.rb<return>
""
"nmap <silent> <space>ftdmi <space>fT/db<return><return>/migrate<return><return><esc>:noh<return>
"nnoremap <silent> <space>fdmi :edit db/migrate/<space><backspace>
""
"nmap <silent> <space>ftlib <space>fT/lib<return><return><esc>:noh<return>
"nnoremap <silent> <space>flib :edit lib/<space><backspace>
""
"nmap <silent> <space>fttes <space>fT/test<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftes :edit test/<space><backspace>
""
"nmap <silent> <space>fttco <space>fT/test<return><return>/controllers<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftco :edit test/controllers/<space><backspace>
""
"nmap <silent> <space>fttmo <space>fT/test<return><return>/models<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftmo :edit test/models/<space><backspace>
"" File Test FIxtures
"nmap <silent> <space>fttfi <space>fT/test<return><return>/fixtures<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftfi :edit test/fixtures/<space><backspace>
"" File Test Mailers
"nmap <silent> <space>fttma <space>fT/test<return><return>/mailers<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftma :edit test/fixtures/mailers/<space><backspace>
"" File Test Mailers Previews
"nmap <silent> <space>fttmp <space>fT/test<return><return>/mailers<return><return>/previews<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftmp :edit test/fixtures/mailers/previews/<space><backspace>
""
"nmap <silent> <space>ftven <space>fT/vendor<return><return><esc>:noh<return>
"nnoremap <silent> <space>fven :edit vendor/<space><backspace>
"" Edit GEMfile
"nmap <silent> <space>fgem <space>fT/Gemfile<return><return><esc>:noh<return>
"" Edit REAdme
"nmap <silent> <space>frea <space>fT/README.md<return><return><esc>:noh<return>
