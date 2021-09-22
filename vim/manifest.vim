augroup CustomVimEntry
  autocmd!
  autocmd VimEnter * :only
  autocmd VimEnter * :vsp
  autocmd VimEnter * :ter
  autocmd VimEnter * :close
  " even though this is sourced in vimrc, it needs to be called again form
  " some of the simple mappings to work...???
  autocmd VimEnter * :so ~/.dotfiles/vim/manifest.vim
augroup END

" this should be cleaned and / or clarified...
so ~/.dotfiles/vim/simple_mappings.vim

" Shared
so ~/.dotfiles/vim/shared_functions.vim

" Vim / 'space' mappings
so ~/.dotfiles/vim/git_mappings.vim
so ~/.dotfiles/vim/file_management_mappings.vim
so ~/.dotfiles/vim/buffer_management_mappings.vim
so ~/.dotfiles/vim/window_management_mappings.vim

" Language specific / 'comma' mappings
so ~/.dotfiles/vim/ruby_mappings.vim
so ~/.dotfiles/vim/javascript_mappings.vim

" Somewhat Rails specific / 'comma' mappings
so ~/.dotfiles/vim/app_controller_mappings.vim
so ~/.dotfiles/vim/app_helper_mappings.vim
so ~/.dotfiles/vim/app_job_mappings.vim
so ~/.dotfiles/vim/app_mailer_mappings.vim
so ~/.dotfiles/vim/app_model_mappings.vim
so ~/.dotfiles/vim/view_mappings.vim
so ~/.dotfiles/vim/html_element_mappings.vim
so ~/.dotfiles/vim/html_ruby_mappings.vim
so ~/.dotfiles/vim/html_form_related_mappings.vim
so ~/.dotfiles/vim/config_mappings.vim
so ~/.dotfiles/vim/db_mappings.vim
so ~/.dotfiles/vim/lib_mappings.vim
so ~/.dotfiles/vim/test_mappings.vim


" truly random one off stuff
  " Caps lock in insert mode (press ctrl - ^ to toggle)
    " Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
    for c in range(char2nr('A'), char2nr('Z'))
      execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
      execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
    endfor
    " Kill the capslock when leaving insert mode.
    autocmd InsertLeave * set iminsert=0

" Misc. mapping / messages
  " Misc. Reload Source
  nnoremap <silent> ,mrs :so ~/.dotfiles/vim/manifest.vim<return>
  " Misc. Edit Template
  nnoremap <silent> ,met :%s/###//g<return>:noh<return>gg
  " Misc. Finish Template
  nnoremap <silent> ,mft gg0<C-v>GI###<esc>
  " Misc. DD but combine to previous line instead of delete line  (I<tab>
  " makes sure there is at least something on the line because viwx on empty
  " line deletes entire line and then grabs following line)
  nmap <silent> ,mdd I<tab><esc>0viwxi<backspace><esc><right>
  " Misc. Dd but combine to Forward line instead of delete line
  nmap <silent> ,mdf $<down>,mdd
  nmap <silent> ,mdr $<down>,mddi<lt>return><esc>
  " temp for whatever
  nnoremap <silent> ,mss a<lt>backspace><lt>backspace><lt>backspace>

  " Misc. Messages
  nnoremap <silent> ,mminsert_input a<%# DeleteThis - insert HTML Input %><esc>/DeleteThis<return>
  nnoremap <silent> ,mmdir_notes a# DeleteThisNote: ** searches all subfolders; *.ChangeExtension searches all file names wit that extension; the final * makes sure to include erb files<return><backspace><backspace><esc>

" Stylesheet mappings
  " Stylesheet Base
    " Stylesheet Base Text Colors
    nnoremap <silent> ,sbtc atext-primary text-secondary text-danger text-warning text-warning-2

" Packages
  " Sortable Table positions
    " Controller
    nnoremap <silent> ,pstc :read ../templates/packages/sortable_table_positions/controller.rb<return>/ChangeParentModel\\|ChangeParent\\|ChangeAuth\\|DeleteThis\\|ChangeChildren\\|ChangeChild\\|ChangeStpId<return>
    " View
    nnoremap <silent> ,pstv :read ../templates/packages/sortable_table_positions/view.html.erb<return>/ChangeStpId\\|ChangePath\\|ChangeStpIdForm\\|ChangeParent\\|ChangeChildren\\|ChangeChild\\|DeleteThis\\|ChangeFinalHiddenRowHeight<return>
