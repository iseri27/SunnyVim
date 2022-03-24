" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

"PLUGIN: vimtex

" vimtex
" pdf preview program
let g:vimtex_view_general_viewer = 'zathura'
let g:vimtex_view_method = 'zathura'

" To use this, create ~/.latexmkrc and write:
" $pdflatex="xelatex %O %S"
let g:vimtex_compiler_latexmk = {
		\     'executable' : 'latexmk',
		\     'options' : [
		\        '-xelatex',
		\        '-file-line-error',
		\        '-synctex=1',
		\        '-interaction=nonstopmode'
		\     ],
		\ }

" Ignore noisy warnings, meizizi😋
let g:vimtex_quickfix_ignore_filters = [
		\     'Package fontspec Warning',
		\     'Package hyperref Warning',
		\     'Underfull',
		\     'Overfull',
		\     'LaTeX Warning: You have requested document'
		\]

let g:vimtex_mappings_enabled = 0
let g:vimtex_imaps_enabled = 0

" vim: nowrap
