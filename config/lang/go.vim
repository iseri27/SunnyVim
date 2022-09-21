" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

function! config#lang#go#Build() abort
	execute "w"
	execute "!go build ./%"
endfunction

function! config#lang#go#Run() abort
	execute "!go run ./%"
endfunction

function! config#lang#go#Clean() abort
	execute "!rm ./%<"
endfunction

call utils#AddKeyForLang('go', ['n'], ['l'], ':call config#lang#go#Build() <CR>', 'Compile this file')
call utils#AddKeyForLang('go', ['n'], ['r'], ':call config#lang#go#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('go', ['n'], ['c'], ':call config#lang#go#Clean() <CR>'  , 'Clean')
call utils#AddKeyForLang('go', ['n'], ['m'], ':call config#lang#makefile#Make() <CR>', 'Make')

