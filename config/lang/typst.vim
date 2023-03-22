autocmd FileType typst setlocal wrap

function! config#lang#typst#Compile() abort
	execute "w"
	call config#core#open_buffer_below()
	terminal typst %
endfunction

call utils#AddKeyForLang('typst', ['n'], ['l'], ':call config#lang#typst#Compile() <CR>', 'Compile'   )
