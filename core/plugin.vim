" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

if &compatible
  set nocompatible
endif

" Required: Set runtimepath
let s:dein_cache_path=expand('~/.cache/dein')
let s:dein_path = s:dein_cache_path . '/repos/github.com/Shougo/dein.vim'
let &runtimepath = &runtimepath . ',' . s:dein_path

call dein#begin(s:dein_cache_path)

" Required: use dein to manage dein
call dein#add(s:dein_path)

" Plugins:
call dein#add('wsdjeg/dein-ui.vim')
call dein#add('Shougo/deol.nvim')
call dein#add('frazrepo/vim-rainbow')
call dein#add('lilydjwg/colorizer', 
			\ {'on_cmd': ['ColorHighlight', 'ColorToggle', 'ColorClear']})
call dein#add('preservim/tagbar',
			\ {'on_cmd': 'TagbarToggle'})
call dein#add('liuchengxu/vista.vim',
			\ {'on_cmd': ['Vista', 'Vista!', 'Vista!!']} )
call dein#add('preservim/nerdcommenter')
call dein#add('itchyny/lightline.vim')
call dein#add('mengelbrecht/lightline-bufferline')
call dein#add('liuchengxu/vim-which-key')
call dein#add('tpope/vim-fugitive',
			\ {'on_cmd': ['Git', 'Git add .', 'Git commit', 'Git push', 'Git pull']})
call dein#add('airblade/vim-gitgutter')
call dein#add('simnalamburt/vim-mundo',
			\ {'on_cmd': ['MundoToggle', 'MundoShow']})
call dein#add('lervag/vimtex',
			\ {'on_ft' : ['bib', 'tex']})
call dein#add('iamcco/markdown-preview.nvim',
			\ {'on_ft': ['markdown', 'pandoc.markdown', 'rmd'], 'build': 'sh -c "cd app && yarn install"' })
call dein#add('iamcco/mathjax-support-for-mkdp', 
			\ {'on_ft' : ['markdown', 'pandoc.markdown', 'rmd']})
call dein#add('lvht/tagbar-markdown',
			\ {'on_ft': 'markdown', 'if': executable('php')})
call dein#add('preservim/vim-markdown',
			\ {'on_ft': 'markdown'})
call dein#add('dag/vim-fish', 
			\ {'on_ft': ['fish']})
call dein#add('SirVer/ultisnips')
call dein#add('neoclide/coc.nvim',
			\ { 'merged': 0, 'rev': 'release' })
call dein#add('leafOfTree/vim-vue-plugin')
call dein#add('godlygeek/tabular')
call dein#add('Shougo/context_filetype.vim')
call dein#add('tyru/caw.vim')

" Colorscheme:
call color#add('morhetz/gruvbox', 'gruvbox')
call color#add('nanotech/jellybeans.vim', 'jellybeans')
call color#add('ajmwagar/vim-deus', 'deus')
call color#add('sainnhe/everforest', 'everforest')

call dein#end()

" Install uninstalled plugins when startup
" if dein#check_install()
"     call dein#install()
" endif

" vim: nowrap
