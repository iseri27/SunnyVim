"PLUGIN: coc
imap <silent> <C-o> <Plug>(coc-snippets-expand)

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

inoremap <silent><expr> <S-TAB>
      \ coc#pum#visible() ? coc#pum#prev(1) :
      \ <SID>check_back_space() ? "\<S-TAB>" :
      \ coc#refresh()

" Enter
inoremap <silent><expr> <CR> coc#pum#visible() ? 
			\ coc#pum#info()['index'] != -1 ? coc#_select_confirm() : coc#pum#stop()
            \ : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

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
	\    'coc-tsserver',
	\    'coc-pyright',
	\    'coc-vimlsp',
	\    'coc-fish',
	\    'coc-sumneko-lua',
	\    'coc-explorer',
	\    'coc-json',
	\    'coc-rust-analyzer'
	\ ]

" vim: nowrap
