"PLUGIN: vim-which-key
call which_key#register('<Space>', "g:which_key_map")
let g:which_key_map = {}
nnoremap <silent><Space> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent><Space> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_use_floating_win = 1
let g:which_key_map = get(g:, 'which_key_map', {})

" vim: nowrap
