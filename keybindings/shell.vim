let g:leader_key_shell = 's'
let s:slk = g:leader_key_git
call utils#AddKeyGroup([g:leader_key_shell], '*Shell')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_shell, 'h'], ':Deol -split=horizontal -winheight=10<CR>', "Open Terminal Buffer Horizontally")
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_shell, 'f'], ':Deol -split=floating<CR>', "Open Terminal in Floaing Window")
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_shell, 'b'], ':Deol <CR>', "Open Terminal in a New Buffer")
