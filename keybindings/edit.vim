" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

"SECTION: Text Edit

let g:leader_key_edit = 'e'

call utils#AddKeyGroup([g:leader_key_edit], '*Edit')

"SECTION: Undo/Redo
call utils#AddKey(['nnore'], [g:leader_key_edit, 'u'], ':undo<CR>', 'Undo')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'r'], ':redo<CR>', 'Redo')

"SECTION: NERDCommenter

call utils#AddKeyGroup([g:leader_key_edit, 'c'], '*Comment')
call utils#AddKey(['n', 'v'], [g:leader_key_edit, 'c', 'l'], '<Plug>NERDCommenterInvert', 'Toggle Comment')
call utils#AddKey(['n', 'v'], [g:leader_key_edit, 'c', 'L'], '<Plug>NERDCommenterComment', 'Comment Lines')

"SECTION: Case

call utils#AddKeyGroup([g:leader_key_edit, 'x'], '*Case')
call utils#AddKey(['n', 'v'], [g:leader_key_edit, 'x', 'u'], '<Plug>Lowercase', 'To Lower Case')
call utils#AddKey(['n', 'v'], [g:leader_key_edit, 'x', 'U'], '<Plug>Uppercase', 'To Upper Case')
call utils#AddKey(['n', 'v'], [g:leader_key_edit, 'x', 't'], '<Plug>ToggleCase', 'Toggle Case')
call utils#AddKey(['n', 'v'], [g:leader_key_edit, 'x', 'w'], ['viw<Plug>Lowercase', '<Plug>Lowercase'], 'Word to Lower Case')
call utils#AddKey(['n', 'v'], [g:leader_key_edit, 'x', 'W'], ['viw<Plug>Uppercase', '<Plug>Uppercase'], 'Word to Upper Case')
call utils#AddKey(['n', 'v'], [g:leader_key_edit, 'x', 'T'], ['viw<Plug>ToggleCase', '<Plug>ToggleCase'], 'Word Toggle Case')

"SECTION: Select/Insert
call utils#AddKeyGroup([g:leader_key_edit, 's'], '*Select')
call utils#AddKey(['nnore'], [g:leader_key_edit, 's', 'w'], 'viw', 'Select Current Word')
call utils#AddKey(['nnore'], [g:leader_key_edit, 's', 'i'], 'viw"_s', 'Delete Current Word and Insert')
call utils#AddKey(['nnore'], [g:leader_key_edit, 's', 'd'], 'viw"_x', 'Delete Current Word')
call utils#AddKey(['n'],     [g:leader_key_edit, 's', 's'], 'viw<C-j>', 'Select Current Word into UltiSnips')


"SECTION: locate
call utils#AddKeyGroup([g:leader_key_edit, 'l'], '*Locate Screen')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'l', 't'], 'zt', 'Put Current Line at Top')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'l', 'c'], 'zz', 'Put Current Line at Center')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'l', 'b'], 'zb', 'Put Current Line at Bottom')

"SECTION: line
call utils#AddKey(['nnore'], [g:leader_key_edit, 'j'], 'J', 'Join the Next Line')

" vim: nowrap
