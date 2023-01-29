" Get file path {{{
function! utils#GetPath() abort
	let l:config_dir = fnamemodify(expand('<sfile>'), ':h')
	return l:config_dir
endfunction
" }}}

" Load Files {{{
" path: absolute path, all *.vim files in path and its subdirs will be loaded.
function! utils#InitFiles(path) abort
	let l:dirs = s:get_all_dirs(a:path)
	call insert(l:dirs, a:path)

	for dir in l:dirs
		let l:files = glob(dir . '/*.vim')
		let l:lt = split(l:files) 

		for f in l:lt
			execute 'source' f
		endfor
	endfor
endfunction
" }}}

" Load File {{{
function! utils#InitFile(path) abort
	execute 'source' a:path
endfunction
" }}}

" Add a keybinding group {{{
" lt: key prefix list
" description: key group description
function! utils#AddKeyGroup(lt, description) abort
	let l:llen = len(a:lt)
	let l:prefix = s:get_prefix_by_list(a:lt)

	if len(l:prefix) > 0 && index(g:global_key_map_list, l:prefix) < 0
		echoerr "Key " . l:prefix . " Not Defined"
	endif

	let l:tmp_map = g:which_key_map
	for i in range(l:llen-1)
		let l:tmp_map = l:tmp_map[a:lt[i]]
	endfor

	let l:tmp_map[a:lt[l:llen-1]] = { 'name' : a:description }

	call add(g:global_key_map_list, l:prefix . a:lt[l:llen-1])
endfunction
"}}}

" Add a keybinding {{{
" mode: mode to be maped such as 'n', 'vnore'...
" lt: key list
" action: actions to be maped
" description: description for key
function! utils#AddKey(mode, lt, action, description) abort
	let l:llen = len(a:lt)
	let l:prefix = s:get_prefix_by_list(a:lt)

	if len(l:prefix > 0) && index(g:global_key_map_list, l:prefix) < 0
		echoerr "Prefix " . l:prefix . " Not Defined"
	endif

	" Add key description into g:which_key_map
	let l:tmp_map = g:which_key_map
	for i in range(l:llen-1)
		let l:tmp_map = l:tmp_map[a:lt[i]]
	endfor

	let l:tmp_map[a:lt[l:llen-1]] = a:description

	let l:k = join(a:lt, '')
	 
	let l:action = []
	if type(a:action) == v:t_string
		for i in range(len(a:mode))
			call add(l:action, a:action)
		endfor
	elseif type(a:action) == v:t_list
		for i in range(len(a:mode))
			call add(l:action, a:action[i])
		endfor
	else
		echoerr "Invalid type for action! String or list needed"
	endif

	for i in range(len(a:mode))
		execute a:mode[i] . 'map' . ' ' . g:SUNV . l:k . ' ' . l:action[i]
	endfor

endfunction
"}}}

" Add a keybinding group for a certain lang {{{
" ft: filetype, value of ':echo &filetype'
function! utils#AddKeyGroupForLang(ft, lt, description) abort
	if !has_key(g:lang_key_map_lists, a:ft)
		let g:lang_key_map_lists[a:ft] = []
		call add(g:lang_key_map_lists[a:ft], 'l')
	endif 

	let l:llen = len(a:lt)
	let l:prefix = s:get_prefix_by_list(a:lt)

	if len(l:prefix) > 0 && index(g:lang_key_map_lists[a:ft], l:prefix) < 0
		echoerr "Key " . l:prefix . " Not Defined"
	endif

	call add(g:lang_key_map_lists[a:ft], l:prefix . a:lt[l:llen-1])
endfunction
"}}}

" Add a keybinding for a certain lang {{{
function! utils#AddKeyForLang(ft, mode, lt, action, description) abort
	if !has_key(g:lang_key_map_lists, a:ft)
		let g:lang_key_map_lists[a:ft] = []
		call add(g:lang_key_map_lists[a:ft], 'l')
	endif

	let l:llen = len(a:lt)
	let l:prefix = 'l' . s:get_prefix_by_list(a:lt)

	if len(l:prefix > 0) && index(g:lang_key_map_lists[a:ft], l:prefix) < 0
		echoerr "Prefix l" . l:prefix . " Not Defined"
	endif

	let l:k = 'l' . join(a:lt, '')
	 
	let l:action = []
	if type(a:action) == v:t_string
		for i in range(len(a:mode))
			call add(l:action, a:action)
		endfor
	elseif type(a:action) == v:t_list
		for i in range(len(a:mode))
			call add(l:action, a:action[i])
		endfor
	else
		echoerr "Invalid type for action! String or List needed"
	endif

	for i in range(len(a:mode))
		execute 'autocmd FileType ' . a:ft . ' ' . a:mode[i] . 'map <buffer> ' . g:SUNV . l:k . ' ' . l:action[i]
	endfor
	
endfunction
"}}}

" When leave insert mode, auto toggle fcitx5 to english {{{
function! utils#Fcitx2en() abort
   let l:input_status = system("fcitx5-remote")
   if l:input_status == 2
      let l:a = system("fcitx5-remote -t")
   endif
endfunction
"}}}

" Plugin: COC {{{
function! utils#PlugCocShowDoc() abort
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    elseif (coc#rpc#ready())
        call CocActionAsync('doHover')
    else
        execute '!' . &keywordprg . " " . expand('<cword>')
    endif
endfunction
"}}}

" Close Current Buffer: {{{
function! utils#Close_current_buffer(...) abort
	let buffers = get(g:, '_spacevim_list_buffers', [])
	let bn = bufnr('%')
	let f = ''
	if getbufvar(bn, '&modified', 0)
		redraw
		echohl WarningMsg
		if len(a:000) > 0
			let rs = get(a:000, 0)
		else
			echon 'save changes to "' . bufname(bn) . '"?  Yes/No/Cancel'
			let rs = nr2char(getchar())
		endif
		echohl None
		if rs ==? 'y'
			write
		elseif rs ==? 'n'
			let f = '!'
			redraw
			echohl ModeMsg
			echon 'discarded!'
			echohl None
		else
			redraw
			echohl ModeMsg
			echon 'canceled!'
			echohl None
			return
		endif
	endif

	if &buftype ==# 'terminal'
		exe 'bd!'
		return
	endif

	let cmd_close_buf = 'bd' . f
	let index = index(buffers, bn)
	if index == 0
		if len(buffers) > 1
			exe 'b' . buffers[1]
			exe cmd_close_buf . bn
		else
			exe cmd_close_buf . bn
			if exists(':Startify') ==# 2
				Startify
			endif
		endif
	elseif index > 0
		if index + 1 == len(buffers)
			exe 'b' . buffers[index - 1]
			exe cmd_close_buf . bn
		else
			exe 'b' . buffers[index + 1]
			exe cmd_close_buf . bn
		endif
	else
		if len(buffers) >= 1
			exe 'bp'
			exe cmd_close_buf . bn
		else
			exe cmd_close_buf . bn
			if exists(':Startify') ==# 2
				Startify
			endif
		endif
	endif
endfunction
"}}}

" Edit: toggle letter case {{{
function! s:toggle_case(visual, uppercase) abort
    if a:visual
        if a:uppercase == 1
            normal! gvgU
        elseif a:uppercase == -1
            normal! gvgu
        elseif a:uppercase == 0
            normal! gv~
        endif
    else
        if a:uppercase == 1
            normal! gUl
        elseif a:uppercase == -1
            normal! gul
        elseif a:uppercase == 0
            normal! ~
        endif
    endif
endfunction
"}}}

" Case Related Maps {{{
nnoremap <silent> <Plug>Lowercase  :call <SID>toggle_case(0, -1)<CR>
vnoremap <silent> <Plug>Lowercase  :call <SID>toggle_case(1, -1)<CR>
nnoremap <silent> <Plug>Uppercase  :call <SID>toggle_case(0, 1)<CR>
vnoremap <silent> <Plug>Uppercase  :call <SID>toggle_case(1, 1)<CR>
nnoremap <silent> <Plug>ToggleCase :call <SID>toggle_case(0, 0)<CR>
vnoremap <silent> <Plug>ToggleCase :call <SID>toggle_case(1, 0)<CR>
" }}}

" Join (n-1) elements of a list {{{
function! s:get_prefix_by_list(lt) abort
	let l:llen = len(a:lt)
	if l:llen <= 1
		return ''
	else
		return join(a:lt[:-2], '')
	endif
endfunction
"}}}

" Get all subdirs of a dir {{{
function! s:get_all_dirs(path) abort
	let l:dir = globpath(a:path, '*', 0, 1)
	call filter(l:dir, 'isdirectory(v:val)')

	if len(l:dir) > 0
		for p in l:dir
			call extend(l:dir, s:get_all_dirs(p))
		endfor
	endif

	return l:dir
endfunction
" }}}

" Get Random Number{{{
function! utils#RandNumber() abort
	let l:n = str2nr(matchstr(reltimestr(reltime()), '\v\.@<=\d+')[1:])
	" let l:n = str2nr(system("bash -c 'echo $RANDOM'"))
	return l:n
endfunction
"}}}
" vim:nowrap
