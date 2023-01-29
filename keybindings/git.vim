"SECTION: git
let g:leader_key_git = 'g'
call utils#AddKeyGroup([g:leader_key_git], '*Git') 
call utils#AddKey(['nnore'], [g:leader_key_git, 'a'], ':Git add . <CR>', 'Add .')
call utils#AddKey(['nnore'], [g:leader_key_git, 's'], ':Git status <CR>', 'Status')
call utils#AddKey(['nnore'], [g:leader_key_git, 'c'], ':Git commit <CR>', 'Commit')
call utils#AddKey(['nnore'], [g:leader_key_git, 'p'], ':Git pull <CR>', 'Pull')
call utils#AddKey(['nnore'], [g:leader_key_git, 'P'], ':Git push <CR>', 'Push')
call utils#AddKey(['nnore'], [g:leader_key_git, 'g'], ':Git<Space>', 'Command')

" vim: nowrap
