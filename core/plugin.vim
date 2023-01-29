"============================================================================="
"                ____                        __     ___                       "
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___              "
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \             "
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |            "
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|            "
"                                        |___/                                "
"============================================================================="

if &compatible
  set nocompatible
endif

call plug#begin()

Plug 'Shougo/deol.nvim'
Plug 'frazrepo/vim-rainbow'
Plug 'lilydjwg/colorizer', { 'on': ['ColorHighlight', 'ColorToggle', 'ColorClear']}
Plug 'preservim/tagbar' ,{ 'on': ['TagbarToggle'] }
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'
Plug 'liuchengxu/vim-which-key'
Plug 'tpope/vim-fugitive', { 'on': ['Git', 'Git add .', 'Git commit', 'Git push', 'Git pull'] }
Plug 'airblade/vim-gitgutter'
Plug 'simnalamburt/vim-mundo', { 'on': ['MundoShow', 'MundoToggle'] }
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', { 'branch': 'release'}
Plug 'godlygeek/tabular'
Plug 'Shougo/context_filetype.vim'
Plug 'tyru/caw.vim'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/jsonc.vim'
Plug 'Corona09/picgo.nvim'
Plug 'tribela/vim-transparent'

" ============= For Languages ============
Plug 'lervag/vimtex', { 'for': ['bib', 'tex'] }
Plug 'preservim/vim-markdown', { 'for': ['markdown'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install', 'for': ['markdown', 'pandoc.markdown', 'rmd'] }
Plug 'iamcco/mathjax-support-for-mkdp', { 'for': ['markdown', 'pandoc.markdown', 'rmd'] }
Plug 'lvht/tagbar-markdown', { 'for': ['markdown'] }
Plug 'dag/vim-fish', { 'for': ['fish'] }
Plug 'arrufat/vala.vim', { 'for': ['vala'] }
Plug 'leafOfTree/vim-vue-plugin'
Plug 'LnL7/vim-nix'
" ========================================

call color#add('morhetz/gruvbox', 'gruvbox')

call plug#end()
