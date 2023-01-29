" SECTION: Word
let g:leader_key_case = 'x'
call utils#AddKeyGroup([g:leader_key_case], '*Case')

"SECTION: Case
call utils#AddKey(['n', 'v'], [g:leader_key_case, 'u'], '<Plug>Lowercase', 'To Lower Case')
call utils#AddKey(['n', 'v'], [g:leader_key_case, 'U'], '<Plug>Uppercase', 'To Upper Case')
call utils#AddKey(['n', 'v'], [g:leader_key_case, 't'], '<Plug>ToggleCase', 'Toggle Case')
call utils#AddKey(['n', 'v'], [g:leader_key_case, 'w'], ['viw<Plug>Lowercase', '<Plug>Lowercase'], 'Word to Lower Case')
call utils#AddKey(['n', 'v'], [g:leader_key_case, 'W'], ['viw<Plug>Uppercase', '<Plug>Uppercase'], 'Word to Upper Case')
call utils#AddKey(['n', 'v'], [g:leader_key_case, 'T'], ['viw<Plug>ToggleCase', '<Plug>ToggleCase'], 'Word Toggle Case')

"SECTION: Select/Insert
call utils#AddKey(['nnore'], [g:leader_key_case, 's'], 'viw', 'Select Current Word')
call utils#AddKey(['nnore'], [g:leader_key_case, 'i'], 'viw"_s', 'Delete Current Word and Insert')
call utils#AddKey(['nnore'], [g:leader_key_case, 'd'], 'viw"_x', 'Delete Current Word')
call utils#AddKey(['n'],     [g:leader_key_case, 'j'], 'viw<C-j>', 'Select Current Word into UltiSnips')
