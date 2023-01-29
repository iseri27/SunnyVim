"SECTION: fold related
let g:leader_key_fold = 'f'
call utils#AddKeyGroup([g:leader_key_fold], '*Fold')
call utils#AddKey(['nnore'], [g:leader_key_fold, 'o'], 'zo', 'Open Fold')
call utils#AddKey(['nnore'], [g:leader_key_fold, 'O'], 'zO', 'Open All')
call utils#AddKey(['nnore'], [g:leader_key_fold, 'c'], 'zc', 'Close Fold')
call utils#AddKey(['nnore'], [g:leader_key_fold, 't'], 'za', 'Toggle Fold')
call utils#AddKey(['nnore'], [g:leader_key_fold, 'd'], 'zE', 'Delete Fold')
call utils#AddKey(['vnore'], [g:leader_key_fold, 'f'], 'zf', 'Create Fold') 
