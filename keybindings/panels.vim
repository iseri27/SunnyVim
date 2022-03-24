" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

"SECTION: User Custom
let g:leader_key_custom = 'u'
call utils#AddKeyGroup([g:leader_key_custom], '*Panels')

"SECTION: panels
call utils#AddKey(['nnore'], [g:leader_key_custom, 'f'], ':CocCommand explorer<CR>', 'File Tree')
call utils#AddKey(['nnore'], [g:leader_key_custom, 't'], ':TagbarToggle <CR>', 'Tagbar')
call utils#AddKey(['nnore'], [g:leader_key_custom, 'u'], ':MundoToggle <CR>', 'History')
