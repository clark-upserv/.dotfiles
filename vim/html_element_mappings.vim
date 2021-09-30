" Html Elements DIv
nnoremap <silent> ,hedi a<div><return></div><esc>k
" Html Elements Div with Class
nnoremap <silent> ,hedc a<div class="ChangeClass"><return></div><esc>/ChangeClass<return>
" Html Elements PAragraph
nnoremap <silent> ,hepa a<p><return>ChangeThisPls<return></p><esc>/ChangeThisPls<return>
" Html Elements SPan
nnoremap <silent> ,hesp a<span><return></span><esc><up>
nnoremap <silent> ,hesc a<span class="ChangeClass"><return></span><esc>/ChangeClass<return>
" Html Elements STrong
nnoremap <silent> ,hest a<strong>ChangeThisPls</strong><esc>/ChangeThisPls<return>
" Html Elements ICon
nnoremap <silent> ,heic a<i class="icon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon"></i><return>DeleteThis - common options include: edit delete more plus-circle-o check info-outline alert-triangle close-circle-o close plus<esc>/px-3\\|fs-4\\|ChangeColor\\|ChangeIcon\\|DeleteThis<return>
" Html Elements BUtton
nnoremap <silent> ,hebu a<button class="btn btn-ChangeColor">ChangeText</button><esc>/ChangeColor\\|ChangeText<return>
" Html Elements Button Icon (classes only)
nnoremap <silent> ,hebi abtn-icon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon<esc>/ChangeColor\\|ChangeIcon<return>
" Html Elements Button Icon (full)
nnoremap <silent> ,hebI a<button class="btn-icon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon"></button><esc>/ChangeColor\\|ChangeIcon<return>
" Html Elements Button Link (classes only)
nnoremap <silent> ,hebl abtn-link<esc>
" Html Elements Button Link (full)
nnoremap <silent> ,hebL a<button class="btn-link">ChangeText</button><esc>/ChangeText<return>
" Html Elements TAble
nnoremap <silent> ,heta a<table><esc>o</table><esc>k
" Html Elements TAble
" Html Elements TAble full
" Html Elements TAble really full
" Html Elements Table capsHead
nnoremap <silent> ,hetH a<thead><esc>o</thead><esc>k
" Html Elements Table Row
nnoremap <silent> ,hetr a<tr><esc>o</tr><esc>k
" Html Elements Table Header cell
nnoremap <silent> ,heth a<th><esc>o</th><esc>k
" Html Elements Table Body
nnoremap <silent> ,hetb a<tbody><esc>o</tbody><esc>k
" Html Elements Table Data cell
nnoremap <silent> ,hetd a<td><esc>o</td><esc>k
" Html Elements Table Footer
nnoremap <silent> ,hetf a<tfoot><esc>o</tfoot><esc>k
" Html Elements Ordered List
nnoremap <silent> ,heol a<ol><return><li>ChangeThisPls</li><return></ol><esc>/ChangeThisPls<return>
" Html Elements Unordered List
nnoremap <silent> ,heul a<ul><return><li>ChangeThisPls</li><return></ul><esc>/ChangeThisPls<return>
" Html Elements CUstom
nnoremap <silent> ,hecu a<ChangeThisPls></ChangeThisPls><esc>/ChangeThisPls<return>
