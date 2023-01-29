let g:lightline = {}
let g:lightline.enable = {
			\ 'statusline' : 1,
			\ 'tabline' : 1
			\ }

let g:lightline.active = {
			\ 'left' : [ ['mode', 'paste'], ['filetype'], ['readonly'] ],
			\ 'right' : [ ['lineinfo'], ['percent'], [ 'fileencoding' ] ]
			\ }

let g:lightline.tabline = {
			\ 'left' : [ [ 'buffers' ] ],
			\ 'right' : [ [] ]
			\ }

let g:lightline.component_expand = {
			\ 'buffers' : 'lightline#bufferline#buffers'
			\ }

let g:lightline.component_type = {
			\ 'buffers' : 'tabsel'
			\ }
" let g:lightline.separator = { 'left': "\ue0b0", 'right': "\ue0b2" }
" let g:lightline.subseparator = { 'left': "\ue0b1", 'right': "\ue0b3" }
" let g:lightline.tabline_separator = { 'left': "\ue0b0", 'right': ""}
" let g:lightline.tabline_subseparator = { 'left': "\ue0b1", 'right': "\ue0b3" }

let g:lightline#bufferline#show_number = 2
let g:lightline#bufferline#composed_number_map = {
	\ '1'  : '① ',
	\ '2'  : '② ',
	\ '3'  : '③ ',
	\ '4'  : '④ ',
	\ '5'  : '⑤ ',
	\ '6'  : '⑥ ',
	\ '7'  : '⑦ ',
	\ '8'  : '⑧ ',
	\ '9'  : '⑨ ',
	\ '10' : '⑩ ',
	\ '11' : '⑪ ',
	\ '12' : '⑫ ',
	\ '13' : '⑬ '
	\ }

let g:ctrlp_status_func = {
	\ 'main': 'CtrlPStatusFunc_1',
	\ 'prog': 'CtrlPStatusFunc_2',
	\ }
function! CtrlPStatusFunc_1(focus, byfname, regex, prev, item, next, marked)
	return lightline#statusline(0)
endfunction
function! CtrlPStatusFunc_2(str)
	return lightline#statusline(0)
endfunction

let g:tagbar_status_func = 'TagbarStatusFunc'
function! TagbarStatusFunc(current, sort, fname, ...) abort
	return lightline#statusline(0)
endfunction

nmap <Leader>1 <Plug>lightline#bufferline#go(1)
nmap <Leader>2 <Plug>lightline#bufferline#go(2)
nmap <Leader>3 <Plug>lightline#bufferline#go(3)
nmap <Leader>4 <Plug>lightline#bufferline#go(4)
nmap <Leader>5 <Plug>lightline#bufferline#go(5)
nmap <Leader>6 <Plug>lightline#bufferline#go(6)
nmap <Leader>7 <Plug>lightline#bufferline#go(7)
nmap <Leader>8 <Plug>lightline#bufferline#go(8)
nmap <Leader>9 <Plug>lightline#bufferline#go(9)
nmap <Leader>0 <Plug>lightline#bufferline#go(10)
