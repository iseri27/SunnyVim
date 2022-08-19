" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

function! config#lang#vala#Compile() abort
	execute "w"
	execute "!valac % -o %<.exe -X -lm -X -w"
endfunction

function! config#lang#vala#Run() abort
	execute "!./%<.exe"
endfunction

function! config#lang#vala#Clean() abort
	execute "!rm ./%<.exe"
endfunction

call utils#AddKeyForLang('vala', ['n'], ['l'], ':call config#lang#vala#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('vala', ['n'], ['r'], ':call config#lang#vala#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('vala', ['n'], ['c'], ':call config#lang#vala#Clean() <CR>'  , 'Clean')

