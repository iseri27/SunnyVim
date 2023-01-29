"SECTION: locate
let g:leader_key_locate = 'L'
call utils#AddKeyGroup([g:leader_key_locate], '*Locate Screen')
call utils#AddKey(['nnore'], [g:leader_key_locate, 't'], 'zt', 'Put Current Line at Top')
call utils#AddKey(['nnore'], [g:leader_key_locate, 'c'], 'zz', 'Put Current Line at Center')
call utils#AddKey(['nnore'], [g:leader_key_locate, 'b'], 'zb', 'Put Current Line at Bottom')
