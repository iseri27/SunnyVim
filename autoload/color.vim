function! color#add(repo, colorscheme) abort
	if !exists('g:colorscheme_list')
		let g:colorscheme_list = []
	endif

	if index(g:colorscheme_list, a:colorscheme) < 0
		Plug a:repo
		call add(g:colorscheme_list, a:colorscheme)
	endif
	
endfunction

function! color#set(colorscheme, bg) abort
	if exists('g:random_colorscheme_enable')
		return
	endif

	if index(g:colorscheme_list, a:colorscheme) < 0
		echoerr "Colorscheme " .. a:colorscheme .. " Uninstalled"
		return
	endif

	if index(['light', 'dark'], a:bg) < 0
		echoerr "Invalid Background " .. a:bg
		return
	endif

	execute 'colorscheme ' .. a:colorscheme
	let &background = a:bg
	let g:lightline.colorscheme = a:colorscheme

	let g:random_colorscheme_enable = v:false
endfunction

function! color#RandomDark() abort
	if exists('g:random_colorscheme_enable')
		if g:random_colorscheme_enable == v:false
			return
		endif
	endif

	let l:len = len(g:colorscheme_list)
	let l:n = utils#RandNumber() % l:len
	let l:c = g:colorscheme_list[l:n]

	let &background = 'dark'
	let g:lightline.colorscheme = l:c
	execute 'colorscheme' .. ' ' .. l:c 

	let g:random_colorscheme_enable = v:true
endfunction

function! color#RandomLight() abort
	if exists('g:random_colorscheme_enable')
		if g:random_colorscheme_enable == v:false
			return
		endif
	endif

	let l:len = len(g:colorscheme_list)
	let l:n = utils#RandNumber() % l:len
	let l:c = g:colorscheme_list[l:n]

	let &background = 'light'
	let g:lightline.colorscheme = l:c
	execute 'colorscheme' .. ' ' .. l:c 

	let g:random_colorscheme_enable = v:true
endfunction
