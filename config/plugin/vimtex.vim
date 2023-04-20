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
		\     'Underfull',
		\     'Overfull',
		\     'LaTeX Warning',
		\     'Package fontspec Warning',
		\     'Package hyperref Warning',
		\     'Package biblatex Warning',
		\     'Package ctex Warning',
		\     'Package inputenc Warning',
		\]

let g:vimtex_mappings_enabled = 0
let g:vimtex_imaps_enabled = 0

" vim: nowrap
