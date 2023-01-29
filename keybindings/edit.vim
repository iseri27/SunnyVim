"SECTION: Text Edit
let g:leader_key_edit = 'e'
call utils#AddKeyGroup([g:leader_key_edit], '*Edit')

"SECTION: Undo/Redo
call utils#AddKey(['nnore'], [g:leader_key_edit, 'u'], ':undo<CR>', 'Undo')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'r'], ':redo<CR>', 'Redo')

"SECTION: line
call utils#AddKey(['nnore'], [g:leader_key_edit, 'j'], 'J', 'Join the Next Line')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'k'], 'k$J', 'Join the Previous Line')

"SECTION: yank
call utils#AddKeyGroup([g:leader_key_edit, 'y'], '*Yank')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_edit, 'y', 'a'], ['"ayy', '"ay'], 'Yank Line/Selected to Register a')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_edit, 'y', 'b'], ['"byy', '"by'], 'Yank Line/Selected to Register b')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_edit, 'y', 'c'], ['"cyy', '"cy'], 'Yank Line/Selected to Register c')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_edit, 'y', 'd'], ['"dyy', '"dy'], 'Yank Line/Selected to Register d')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_edit, 'y', 'e'], ['"eyy', '"ey'], 'Yank Line/Selected to Register e')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_edit, 'y', 'f'], ['"fyy', '"fy'], 'Yank Line/Selected to Register f')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_edit, 'y', 'g'], ['"gyy', '"gy'], 'Yank Line/Selected to Register g')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_edit, 'y', 'h'], ['"hyy', '"hy'], 'Yank Line/Selected to Register h')

"SECTION: paste
call utils#AddKeyGroup([g:leader_key_edit, 'p'], '*Paste')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'p', 'a'], '"ap', 'Paste from Register a')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'p', 'b'], '"bp', 'Paste from Register b')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'p', 'c'], '"cp', 'Paste from Register c')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'p', 'd'], '"dp', 'Paste from Register d')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'p', 'e'], '"ep', 'Paste from Register e')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'p', 'f'], '"fp', 'Paste from Register f')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'p', 'g'], '"gp', 'Paste from Register g')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'p', 'h'], '"hp', 'Paste from Register h')

call utils#AddKeyGroup([g:leader_key_edit, 'P'], '*Paste Above')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'P', 'a'], '"aP', 'Paste Above from Register a')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'P', 'b'], '"bP', 'Paste Above from Register b')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'P', 'c'], '"cP', 'Paste Above from Register c')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'P', 'd'], '"dP', 'Paste Above from Register d')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'P', 'e'], '"eP', 'Paste Above from Register e')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'P', 'f'], '"fP', 'Paste Above from Register f')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'P', 'g'], '"gP', 'Paste Above from Register g')
call utils#AddKey(['nnore'], [g:leader_key_edit, 'P', 'h'], '"hP', 'Paste Above from Register h')

" vim: nowrap
