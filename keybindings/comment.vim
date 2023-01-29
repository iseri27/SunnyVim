"SECTION: Comment
let g:leader_key_comment = 'c'
call utils#AddKeyGroup([g:leader_key_comment], '*Comment')
" call utils#AddKey(['n', 'v'], [g:leader_key_comment, 'l'], '<Plug>NERDCommenterInvert', 'Toggle Comment')
" call utils#AddKey(['n', 'v'], [g:leader_key_comment, 'L'], '<Plug>NERDCommenterComment', 'Comment Lines')
call utils#AddKey(['n', 'v'], [g:leader_key_comment, 'l'], '<Plug>(caw:hatpos:toggle)', 'Toggle Comment Line')
call utils#AddKey(['n', 'v'], [g:leader_key_comment, 'a'], '<Plug>(caw:dollorpos:toggle)', 'Toggle Comment Append')
call utils#AddKey(['n', 'v'], [g:leader_key_comment, 'w'], '<Plug>(caw:wrap:toggle)', 'Toggle Comment Wrap')
