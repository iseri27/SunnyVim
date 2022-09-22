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
	call config#core#open_buffer_below()
	terminal rustc % -o %<.exe
endfunction

function! config#lang#rust#Run() abort
	call config#core#open_buffer_below()
	terminal ./%.exe
endfunction

function! config#lang#rust#Clean() abort
	execute "!rm ./%<.exe"
endfunction

call utils#AddKeyForLang('rust', ['n'], ['l'], ':call config#lang#rust#Compile() <CR>', 'Compile this file')
call utils#AddKeyForLang('rust', ['n'], ['r'], ':call config#lang#rust#Run() <CR>'    , 'Run this file')
call utils#AddKeyForLang('rust', ['n'], ['c'], ':call config#lang#rust#Clean() <CR>'  , 'Clean')
