function! config#lang#cpp#Compile() abort
	execute "w"
	call config#core#open_buffer_below()
	terminal g++ % -std=c++11 -g -DDEBUG -Wall -o %<.exe
endfunction

function! config#lang#cpp#Run() abort
	call config#core#open_buffer_below()
	terminal ./%<.exe
endfunction

function! config#lang#cpp#Clean() abort
	execute "!rm ./%<.exe"
endfunction

call utils#AddKeyForLang('cpp', ['n'], ['l'], ':call config#lang#cpp#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('cpp', ['n'], ['r'], ':call config#lang#cpp#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('cpp', ['n'], ['c'], ':call config#lang#cpp#Clean() <CR>'  , 'Clean')
call utils#AddKeyForLang('cpp', ['n'], ['m'], ':call config#lang#makefile#Make() <CR>', 'Make')
