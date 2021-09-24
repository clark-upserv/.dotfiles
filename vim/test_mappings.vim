" Miscellaneous Messages Test
function! TestDisclaimer()
  exe "normal! a# DeleteThis - do not test things that can easily change (ie text in source code)\<return>DeleteThis - do not test things so that if one thing is changed in source code many tests will break"
endfunction

" Test Run
  " File Test Current File
  nnoremap <silent> ,trcf :call FileTestCurrentFile(0)<return>
  " File Test Current File in terminal
  nnoremap <silent> ,trcF :call FileTestCurrentFile(1)<return>:call OpenTerminalInWindow()<return><C-c><C-\><C-n>pa<return>
  function! FileTestCurrentFile(use_shell)
    execute ':wa'
    let test_file = GetTestFileName()
    let test_command = substitute(test_file, 'test', 'rails t test', '')
    if a:use_shell == 0
      execute ':!' test_command
    else 
      let @+ = test_command
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
  nnoremap <silent> ,traf :wa<return>:! rails t<return>
  " File Test All Files in terminal
  nnoremap <silent> ,traF :wa<return>:call OpenTerminalInWindow()<return><C-c>rails t<return>
" Test Base
  " Tests Base Test Base
  nnoremap <silent> ,tbtb atest 'Should ChangeThisPls when ChangeThisPls' do<return>end<esc>/ChangeThisPls<return>
  " Tests Base Test Method
  nnoremap <silent> ,tbtm atest 'method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
  " Tests Base Perform enqueued Jobs
  nnoremap <silent> ,tbpj aperform_enqueued_jobs<esc>
  " Tests Base FIxtures
  nnoremap <silent> ,tbfi @ChangeObject = ChangeTable(:ChangeFixture)<esc>/ChangeObject\\|ChangeTable\\|ChangeFixture<return>
  " Tests Fixtures Attach File
  nnoremap <silent> ,tbaf :call TestsBaseAttachFile()<return>/ChangeVariable\\|ChangePathAndExtension\\|ChangeContentType\\|DeleteThis\\|ChangeObject\\|ChangeAssociation<return>
  function! TestsBaseAttachFile()
    execute "normal! aChangeVariable = Rack::Test::UploadedFile.new(Rails.root.join('test', 'fixtures', 'files', 'ChangePathAndExtension'), 'ChangeContentType')\<return># DeleteThis - file type and subtypes:\<return>  application/pdf\<return>image/png image/gif image/jpeg\<return>video/mov video/mp4\<return>audio/mpeg audio/wave\<return>text/plain text/csv text/html\<return>see here for more examples: https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types\<return>\<backspace>\<backspace>\<backspace>@ChangeObject.ChangeAssociation.attach(ChangeVariable)"
  endfunction

" Tests Assert
  " Tests Assert Enqueued Emails
  nnoremap <silent> ,taee aassert_equal ChangeCount, enqueued_emails('ChangeMailerAndEmail').size<esc>/ChangeCount\\|ChangeMailerAndEmail<return>
  " Tests Assert No enqueued Emails
  nnoremap <silent> ,tane aassert_no_enqueued_emails<esc>
  nnoremap <silent> ,tanE aassert_empty enqueued_emails('ChangeMailerAndEmail')<esc>/ChangeMailerAndEmail<return>
  " Tests Assert Enqueued Jobs
  nnoremap <silent> ,taej aassert_enqueued_jobs ChangeCount, only: ::ChangeJob<esc>/ChangeCount\\|ChangeJob<return>
  " Tests Assert No enqueued Jobs
  nnoremap <silent> ,tanj aassert_no_enqueued_jobs
  nnoremap <silent> ,tanJ aassert_no_enqueued_jobs only: ::ChangeJob<esc>/ChangeJob<return>
  " common assertions
  nnoremap <silent> ,tadi aassert_difference 'ChangeCountable', ChangeDifference do<return>end<esc>/ChangeCountable\\|ChangeDifference<return>
  nnoremap <silent> ,taeq aassert_equal ChangeExpected, ChangeActual<esc>/ChangeExpected\\|ChangeActual<return>
  nnoremap <silent> ,tani aassert_nil ChangeThis<esc>/ChangeThis<return>
  nnoremap <silent> ,tann aassert_not_nil ChangeThis<esc>/ChangeThis<return>

" Helper
  " Tests Helper BAse
  nnoremap <silent> ,thba :read ../templates/tests/helper_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|change_model_name\\|ChangeFixture<return>

" Integration
  " Tests Integration BAse
  nnoremap <silent> ,tiba :read ../templates/tests/integration_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|change_model_name\\|ChangeFixture\\|DeleteThis<return>

" Jobs
  " Tests Job BAse
  nnoremap <silent> ,tjba :read ../templates/tests/job_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|ChangeObject\\|ChangeTableName\\|ChangeFixtureName<return>
  nnoremap <silent> ,tjtb :read ../templates/tests/job_test_base.rb<return>/ChangeDescription\\|ChangeJobName\\|DeleteThis\\|ChangeJob\\|ChangeArgs\\|ChangeObject<return>

" Mailers
  " Tests Mailer BAse
  nnoremap <silent> ,tMba :read ../templates/tests/mailer_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|add mailer test<return>dd<up>,tatb/ChangeThisPls\\|ChangeThis\\|ChangeObject\\|change_model_name\\|ChangeFixture\\|ChangeEmail\\|ChangeThis\\|DeleteThis\\|ChangeSubject\\|ChangeMailTo\\|ChangeMailFrom\\|ChangeSomeContent<return>
  " Tests Mailer Test Base
  nnoremap <silent> ,tMtb :read ../templates/tests/mailer_test_base.rb<return>/ChangeEmail\\|ChangeThis\\|DeleteThis\\|ChangeSubject\\|ChangeMailTo\\|ChangeMailFrom\\|ChangeSomeContent<return>

" Test Tasks
  " Test Tasks Base
  nnoremap <silent> ,tTba :read ../templates/tests/task_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/ChangeThisPls\\|ChangeTestType\\|ChangeFile\\|ChangeExpectedAction\\|ChangeTaskName\\|DeleteThis\\|ChangeApplicationName<return>
  
" Test Lib files
  " Test Lib files BAse
  nnoremap <silent> ,tlba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActionDispatch::IntegrationTest<esc>:call IndentTemplate('inner_followup', 1, 0, '../templates/tests/base.rb')<return>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>$xxxx/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/ChangeObject\\|ChangeTable\\|ChangeFixture\\|DeleteThis<return>
