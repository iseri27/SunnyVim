" Core Config:
let g:SUNV = '<Space>'
let g:global_key_map_list = []
let g:lang_key_map_lists = {}

" Auto toggle fcitx5
if executable('fcitx5')
	autocmd BufCreate      *  :call utils#Fcitx2en()
	autocmd BufEnter       *  :call utils#Fcitx2en()
	autocmd BufLeave       *  :call utils#Fcitx2en()
	autocmd InsertLeave    *  :call utils#Fcitx2en()
	autocmd InsertEnter    *  :call utils#Fcitx2zh()
endif

" Locate cursor to last edit place
autocmd BufReadPost    *  if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" vim: nowrap
