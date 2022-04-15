" ============================================================================= "
"                ____                        __     ___                         "
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___                "
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \               "
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |              "
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|              "
"                                        |___/                                  "
" ============================================================================= "

"SECTION: Comment
let g:leader_key_comment = 'c'
call utils#AddKeyGroup([g:leader_key_comment], '*Comment')
call utils#AddKey(['n', 'v'], [g:leader_key_comment, 'l'], '<Plug>NERDCommenterInvert', 'Toggle Comment')
call utils#AddKey(['n', 'v'], [g:leader_key_comment, 'L'], '<Plug>NERDCommenterComment', 'Comment Lines')