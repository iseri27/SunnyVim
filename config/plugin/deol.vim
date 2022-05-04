" =============================================================================
"                ____                        __     ___              
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___     
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \    
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |   
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|   
"                                        |___/                       
" =============================================================================

" Availiable options:
" - none
" - single
" - double
" - rounded
" - soild
" - shadow
"   但是好像都没用
let g:deol#floating_border = "double"

" 在 terminal 窗口中进入 normal 模式
tnoremap <ESC> <C-\><C-n>

" 在 terminal 窗口与其他窗口之间移动
tnoremap <C-h> <C-\><C-n><C-w>h
tnoremap <C-j> <C-\><C-n><C-w>j
tnoremap <C-k> <C-\><C-n><C-w>k
tnoremap <C-l> <C-\><C-n><C-w>l

nnoremap <Space>' :Deol -split=horizontal -winheight=10<CR>
nnoremap <Space>; :Deol -split=horizontal -winheight=10<CR>
