" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

function! config#lang#ts#Compile() abort
	execute "w"
	execute "!tsc %"
endfunction

function! config#lang#ts#Run() abort
	execute "!node ./%<.js"
endfunction

function! config#lang#ts#Clean() abort
	execute "!rm ./%<.js"
endfunction

call utils#AddKeyForLang('typescript', ['n'], ['l'], ':call config#lang#ts#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('typescript', ['n'], ['r'], ':call config#lang#ts#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('typescript', ['n'], ['c'], ':call config#lang#ts#Clean() <CR>'  , 'Clean')

