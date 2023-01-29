"SECTION:buffer
let g:leader_key_buffer = 'b'
call utils#AddKeyGroup([g:leader_key_buffer], '*Buffer')
call utils#AddKey(['nnore'], [g:leader_key_buffer, 'n'], ':bnext<CR>', 'Next Buffer')
call utils#AddKey(['nnore'], [g:leader_key_buffer, 'p'], ':bprevious<CR>', 'Previous Buffer')
call utils#AddKey(['nnore'], [g:leader_key_buffer, 'd'], ':call utils#Close_current_buffer()<CR>', 'Close this Buffer')

" vim: nowrap
