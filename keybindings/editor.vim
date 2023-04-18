"SECTION: Vim
let g:leader_key_editor = 'v' 

function! Toggle_wrap() abort
	if &wrap == 0
		setlocal wrap
		echo "Set wrap"
	else
		setlocal nowrap
		echo "Set nowrap"
	endif
endfunction

call utils#AddKeyGroup([g:leader_key_editor], '*Vim')
call utils#AddKey(['nnore'], [g:leader_key_editor, 'r'], ':source $MYVIMRC<CR>', 'Reload MYVIMRC')
call utils#AddKey(['nnore'], [g:leader_key_editor, 'w'], ':call Toggle_wrap() <CR>', 'Toggle Wrap')

" vim: nowrap
