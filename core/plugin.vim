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

Plug 'Shougo/deol.nvim'                  , { 'commit': '50a9e70da17020af11562d6eb07b310f106c4ecf' }
Plug 'frazrepo/vim-rainbow'              , { 'commit': 'a6c7fd5a2b0193b5dbd03f62ad820b521dea3290' }
Plug 'lilydjwg/colorizer'                , { 'commit': '72790a003d5a706c287486a1a81e3a6b32158b54', 'on': ['ColorHighlight', 'ColorToggle', 'ColorClear'] }
Plug 'preservim/tagbar'                  , { 'commit': 'af3ce7c3cec81f2852bdb0a0651d2485fcd01214', 'on': ['TagbarToggle'] }
Plug 'itchyny/lightline.vim'             , { 'commit': 'b1e91b41f5028d65fa3d31a425ff21591d5d957f' }
Plug 'mengelbrecht/lightline-bufferline' , { 'commit': 'c0199a7027da92d9770d1e2a9f4bf6257c7ec7ef' }
Plug 'liuchengxu/vim-which-key'          , { 'commit': 'c0eb7a63e80ed0dc2c91eb8c879b7396a795f775' }
Plug 'tpope/vim-fugitive'                , { 'commit': '82a9af133ce15afc232a9e754898a8ba252780e6', 'on': ['Git', 'Git add .', 'Git commit', 'Git push', 'Git pull'] }
Plug 'airblade/vim-gitgutter'            , { 'commit': 'edb607cc4b329099da825c028c53b1264dbd2350' }
Plug 'simnalamburt/vim-mundo'            , { 'commit': 'b53d35fb5ca9923302b9ef29e618ab2db4cc675e', 'on': ['MundoShow', 'MundoToggle'] }
Plug 'SirVer/ultisnips'                  , { 'commit': '0ad238b1910d447476b2d98f593322c1cdb71285' }
Plug 'neoclide/coc.nvim'                 , { 'commit': 'bbaa1d5d1ff3cbd9d26bb37cfda1a990494c4043' }
Plug 'godlygeek/tabular'                 , { 'commit': '339091ac4dd1f17e225fe7d57b48aff55f99b23a' }
Plug 'Shougo/context_filetype.vim'       , { 'commit': 'e276626e441eee2c624b9192113f1484bc2bc0f3' }
Plug 'tyru/caw.vim'                      , { 'commit': '3aefcb5a752a599a9200dd801d6bcb0b7606bf29' }
Plug 'preservim/nerdcommenter'           , { 'commit': 'd069f7fb562fb9eb6911fe23cda7aca2a387043e' }
Plug 'neoclide/jsonc.vim'                , { 'commit': '6fb92460f9e50505c9b93181a00f27d10c9b383f' }
Plug 'Corona09/picgo.nvim'               , { 'commit': '6ebc56fd6f47c8a2029942d9684e55d1c4012ab2' }
Plug 'tribela/vim-transparent'           , { 'commit': '423f93517d4fadff90ff36c28eead723b0db6724' }
Plug 'marioortizmanero/adoc-pdf-live.nvim'

" ============= For Languages ============
Plug 'iamcco/markdown-preview.nvim'      , {'commit': '02cc3874738bc0f86e4b91f09b8a0ac88aef8e96', 'do': 'cd app && yarn install', 'for': ['markdown', 'pandoc.markdown', 'rmd'] }
Plug 'iamcco/mathjax-support-for-mkdp'   , {'commit': '9565bacf73badaba41ca9449b055b3cc972bad7f', 'for': ['markdown', 'pandoc.markdown', 'rmd'] }
Plug 'lervag/vimtex'                     , {'commit': 'e262abf6b96f45c7a1dd18d1037f6e35d311ec0d', 'for': ['bib', 'tex'] }
Plug 'preservim/vim-markdown'            , {'commit': '5d3d1b6cbdc4be0b4c6105c1ab1f769d76d3c68f', 'for': ['markdown'] }
Plug 'lvht/tagbar-markdown'              , {'commit': '265dfc6ed12ec0d40b2156fb70542ef5657461b2', 'for': ['markdown'] }
Plug 'dag/vim-fish'                      , {'commit': '50b95cbbcd09c046121367d49039710e9dc9c15f', 'for': ['fish'] }
Plug 'arrufat/vala.vim'                  , {'commit': 'ce569e187bf8f9b506692ef08c10b584595f8e2d', 'for': ['vala'] }
Plug 'leafOfTree/vim-vue-plugin'         , {'commit': '58ac69b2c8a98a9bd2a95fbaa7b5f0fe806bad0f'}
Plug 'LnL7/vim-nix'                      , {'commit': '7d23e97d13c40fcc6d603b291fe9b6e5f92516ee'}
" ========================================

call color#add('morhetz/gruvbox', 'gruvbox')

call plug#end()
