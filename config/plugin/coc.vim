" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

"PLUGIN: coc
imap <silent> <C-o> <Plug>(coc-snippets-expand)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

let g:coc_snippet_next = "<C-j>"
let g:coc_snippet_prev = "<C-k>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" COC Extensions List
let g:coc_global_extensions = [
	\    'coc-marketplace',
	\    'coc-snippets',
	\    'coc-translator',
	\    'coc-vimtex',
	\    'coc-clangd',
	\    'coc-tsserver',
	\    'coc-python',
	\    'coc-vimlsp',
	\    'coc-sh',
	\    'coc-fish',
	\    'coc-sumneko-lua',
	\    'coc-explorer',
	\    'coc-json',
	\ ]

" vim: nowrap
