"SECTION: Window Related
let g:leader_key_window = 'w'
call utils#AddKeyGroup([g:leader_key_window], '*Window')
call utils#AddKey(['nnore'], [g:leader_key_window, 'h'], '<C-w>h', 'Window Left')
call utils#AddKey(['nnore'], [g:leader_key_window, 'l'], '<C-w>l', 'Window Right')
call utils#AddKey(['nnore'], [g:leader_key_window, 'j'], '<C-w>j', 'Window Below')
call utils#AddKey(['nnore'], [g:leader_key_window, 'k'], '<C-w>k', 'Window Above')
call utils#AddKey(['nnore'], [g:leader_key_window, 'H'], ':vertical resize -5 <CR>', 'Vertical Size -5')
call utils#AddKey(['nnore'], [g:leader_key_window, 'L'], ':vertical resize +5 <CR>', 'Vertical Size +5')
call utils#AddKey(['nnore'], [g:leader_key_window, 'J'], ':resize -5 <CR>', 'Size -5')
call utils#AddKey(['nnore'], [g:leader_key_window, 'K'], ':resize +5 <CR>', 'Size +5')

" vim: nowrap
