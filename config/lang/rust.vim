" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

function! config#lang#rust#Compile() abort
	execute "w"
	execute "!rustc % -o %<.exe"
endfunction

function! config#lang#rust#Run() abort
	execute "!./%<.exe"
endfunction

function! config#lang#rust#Clean() abort
	execute "!rm ./%<.exe"
endfunction

call utils#AddKeyForLang('c', ['n'], ['l'], ':call config#lang#rust#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('c', ['n'], ['r'], ':call config#lang#rust#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('c', ['n'], ['c'], ':call config#lang#rust#Clean() <CR>'  , 'Clean')
