"SECTION: Vim
let g:leader_key_editor = 'v' 
call utils#AddKeyGroup([g:leader_key_editor], '*Vim')
call utils#AddKey(['nnore'], [g:leader_key_editor, 'r'], ':source $MYVIMRC<CR>', 'Reload MYVIMRC')
call utils#AddKey(['nnore'], [g:leader_key_editor, 'w'], ':call global#Toggle_wrap() <CR>', 'Toggle Wrap')

" vim: nowrap
