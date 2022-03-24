" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

"SECTION:buffer
let g:leader_key_buffer = 'b'
call utils#AddKeyGroup([g:leader_key_buffer], '*Buffer')
call utils#AddKey(['nnore'], [g:leader_key_buffer, 'n'], ':bnext<CR>', 'Next Buffer')
call utils#AddKey(['nnore'], [g:leader_key_buffer, 'p'], ':bprevious<CR>', 'Previous Buffer')
call utils#AddKey(['nnore'], [g:leader_key_buffer, 'd'], ':call utils#Close_current_buffer()<CR>', 'Close this Buffer')

" vim: nowrap
