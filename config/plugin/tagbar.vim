"PLUGIN: tagbar
let g:tagbar_ctags_bin = '/usr/bin/ctags'
let g:tagbar_sort = get(g:, 'tagbar_sort', 0)
let g:tagbar_compact = get(g:, 'tagbar_compact', 1)
" Disable original Tagbar's keybinding for <Space>
let g:tagbar_map_showproto = get(g:, 'tagbar_map_showproto', '')
let g:tagbar_iconchars = ['', '']

autocmd FileType bib let g:tagbar_type_bib = {
									\     'ctagstype' : 'bib',
									\     'kinds'     : [
									\         'a:Articles',
									\         'b:Books',
									\         'L:Booklets',
									\         'c:Conferences',
									\         'B:Inbook',
									\         'C:Incollection',
									\         'P:Inproceedings',
									\         'm:Manuals',
									\         'T:Masterstheses',
									\         'M:Misc',
									\         't:Phdtheses',
									\         'p:Proceedings',
									\         'r:Techreports',
									\         'u:Unpublished',
									\     ]
									\ }

autocmd FileType snippets let g:tagbar_type_snippets = {
								    \     'ctagstype' : 'snippets',
								    \     'kinds' : [
									\         's:snippets',
								    \     ]
							        \ }

autocmd FileType json let g:tagbar_type_json = {
									\     'ctagstype' : 'json',
									\     'kinds' : [
									\         'o:objects',
									\         'a:arrays',
									\         'n:numbers',
									\         's:strings',
									\         'b:booleans',
									\         'z:nulls'
									\     ],
									\     'sro' : '.',
									\     'scope2kind': {
									\         'object': 'o',
									\         'array': 'a',
									\         'number': 'n',
									\         'string': 's',
									\         'boolean': 'b',
									\         'null': 'z'
									\     },
									\     'kind2scope': {
									\         'o': 'object',
									\         'a': 'array',
									\         'n': 'number',
									\         's': 'string',
									\         'b': 'boolean',
									\         'z': 'null'
									\     },
									\     'sort' : 0
									\ }

autocmd FileType jsonc let g:tagbar_type_jsonc = {
									\     'ctagstype' : 'json',
									\     'kinds' : [
									\         'o:objects',
									\         'a:arrays',
									\         'n:numbers',
									\         's:strings',
									\         'b:booleans',
									\         'z:nulls'
									\     ],
									\     'sro' : '.',
									\     'scope2kind': {
									\         'object': 'o',
									\         'array': 'a',
									\         'number': 'n',
									\         'string': 's',
									\         'boolean': 'b',
									\         'null': 'z'
									\     },
									\     'kind2scope': {
									\         'o': 'object',
									\         'a': 'array',
									\         'n': 'number',
									\         's': 'string',
									\         'b': 'boolean',
									\         'z': 'null'
									\     },
									\     'sort' : 0
									\ }

" vim: nowrap
