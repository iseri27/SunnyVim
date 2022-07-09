" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

"PLUGIN: vim-which-key
call which_key#register('<Space>', "g:which_key_map")
let g:which_key_map = {}
nnoremap <silent><Space> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent><Space> :<c-u>WhichKeyVisual '<Space>'<CR>

let g:which_key_use_floating_win = 1
let g:which_key_map = get(g:, 'which_key_map', {})

" vim: nowrap
