" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

function! config#lang#c#Compile() abort
	execute "w"
	execute "!gcc % -std=c11 -g -DDEBUG -Wall -o %<.exe"
endfunction

function! config#lang#c#Run() abort
	execute "!./%<.exe"
endfunction

function! config#lang#c#Clean() abort
	execute "!rm ./%<.exe"
endfunction

call utils#AddKeyForLang('c', ['n'], ['l'], ':call config#lang#c#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('c', ['n'], ['r'], ':call config#lang#c#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('c', ['n'], ['c'], ':call config#lang#c#Clean() <CR>'  , 'Clean')
