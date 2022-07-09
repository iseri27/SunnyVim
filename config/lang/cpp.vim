" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

function! config#lang#cpp#Compile() abort
	execute "w"
	execute "!g++ % -std=c++11 -g -DDEBUG -Wall -o %<.exe"
endfunction

function! config#lang#cpp#Run() abort
	execute "!./%<.exe"
endfunction

function! config#lang#cpp#Clean() abort
	execute "!rm ./%<.exe"
endfunction

call utils#AddKeyForLang('cpp', ['n'], ['l'], ':call config#lang#cpp#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('cpp', ['n'], ['r'], ':call config#lang#cpp#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('cpp', ['n'], ['c'], ':call config#lang#cpp#Clean() <CR>'  , 'Clean')
