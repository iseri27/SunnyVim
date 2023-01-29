function! config#lang#ts#Compile() abort
	execute "w"
	call config#core#open_buffer_below()
	terminal tsc %
endfunction

function! config#lang#ts#Run() abort
	call config#core#open_buffer_below()
	terminal node ./%<.js
endfunction

function! config#lang#ts#Clean() abort
	execute "!rm ./%<.js"
endfunction

call utils#AddKeyForLang('typescript', ['n'], ['l'], ':call config#lang#ts#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('typescript', ['n'], ['r'], ':call config#lang#ts#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('typescript', ['n'], ['c'], ':call config#lang#ts#Clean() <CR>'  , 'Clean')

