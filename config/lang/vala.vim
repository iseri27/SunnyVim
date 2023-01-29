function! config#lang#vala#Compile() abort
	execute "w"
	call config#core#open_buffer_below()
	terminal valac % -o %<.exe -x -lm -X -w
endfunction

function! config#lang#vala#Run() abort
	call config#core#open_buffer_below()
	terminal ./%.exe
endfunction

function! config#lang#vala#Clean() abort
	execute "!rm ./%<.exe"
endfunction

call utils#AddKeyForLang('vala', ['n'], ['l'], ':call config#lang#vala#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('vala', ['n'], ['r'], ':call config#lang#vala#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('vala', ['n'], ['c'], ':call config#lang#vala#Clean() <CR>'  , 'Clean')
call utils#AddKeyForLang('cpp', ['n'], ['m'], ':call config#lang#makefile#Make() <CR>', 'Make')
