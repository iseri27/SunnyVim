" COMMON CONFIG:
set number
set ruler
set noundofile
set nobackup
set showcmd
set tabstop=4 
set shiftwidth=4
set cursorline
set shortmess+=I
set fdm=marker
set relativenumber
set nowrap
set nohlsearch
set fileencoding=utf-8
set fileencodings=utf-8,usc-bom,gb18030,gbk,gb2312,cp936
set showtabline=2
set noshowmode

filetype plugin indent on
syntax enable

"SECTION: 模糊命令
command! Q q
command! W w
command! Wq wq
command! WQ wq
command! Wa wa
command! WA wa
command! Qa qa
command! QA qa

"SECTION: 保存文件
nnoremap <C-S> :w<CR>
nnoremap ww :w<CR>
nnoremap wq :wq<CR>
nnoremap Q  :q!<CR>
nnoremap <C-Q> :q<CR>
nnoremap <C-W> :w<CR>
inoremap <C-W> <ESC>:w<CR>
inoremap <C-S> <ESC>:w<CR>

"SECTION: 退出插入模式
inoremap jj <ESC>
inoremap JJ <ESC>
inoremap <C-q> <ESC>

nnoremap <leader>y "+yy
vnoremap <leader>y "+y
nnoremap <leader>p "+p
nnoremap <leader>P "+P
nnoremap <leader>d "+dd
vnoremap <leader>d "+d

"SECTION: 光标移动
vnoremap <C-F> <Right>
nnoremap <silent><nowait><expr> <C-F> coc#float#has_scroll() ? coc#float#scroll(1) : "\<Right>"
inoremap <C-F> <Right>

vnoremap <C-B> <Left>
nnoremap <silent><nowait><expr> <C-B> coc#float#has_scroll() ? coc#float#scroll(0) : "\<Left>"
inoremap <C-B> <Left>

"SECTION: 编辑
inoremap <C-E>: <ESC>A
inoremap <C-E>: <ESC>I

nnoremap J 5j
vnoremap J 5j
nnoremap K 5k
vnoremap K 5k
vnoremap U 5k

nnoremap j gj
vnoremap j gj
nnoremap k gk
vnoremap k gk
vnoremap u gk
nnoremap H 5h
vnoremap H 5h
nnoremap L 5l
vnoremap L 5l

" nnoremap u o<ESC>
" nnoremap U O<ESC>
nnoremap u k
nnoremap U 5k

"SECTION: 缩进
nnoremap < <<_
xnoremap < <gv
nnoremap > >>_
xnoremap > >gv

" nnoremap dd "_dd
nnoremap s  "_s
vnoremap O  "_s
vnoremap <Backspace> "_x

" vim: nowrap
