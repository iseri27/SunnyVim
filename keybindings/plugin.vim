let g:leader_key_plugin = 'p'

call utils#AddKeyGroup([g:leader_key_plugin], '*Plugin')
"SECTION: vim-plug
call utils#AddKeyGroup([g:leader_key_plugin, 'v'], '*Vim-Plug')
call utils#AddKey(['nnore'], [g:leader_key_plugin, 'v', 's'], ':PlugStatus <CR>', 'Status')
call utils#AddKey(['nnore'], [g:leader_key_plugin, 'v', 'u'], ':PlugUpdate <CR>', 'Update')
call utils#AddKey(['nnore'], [g:leader_key_plugin, 'v', 'i'], ':PlugInstall <CR>', 'Install')

"SECTION: coc
call utils#AddKeyGroup([g:leader_key_plugin, 'c'], '*COC')
call utils#AddKey(['nnore'],  [g:leader_key_plugin, 'c', 'd'], ':call utils#PlugCocShowDoc() <CR>', 'Show Document')
call utils#AddKey(['nnore'],  [g:leader_key_plugin, 'c', 'm'], ':CocList marketplace <CR>', 'Marketplace')
call utils#AddKey(['nnore'],  [g:leader_key_plugin, 'c', 'e'], ':CocList extensions <CR>', 'Extension List')
call utils#AddKey(['nnore'],  [g:leader_key_plugin, 'c', 'u'], ':CocUpdate <CR>', 'Update')
call utils#AddKey(['nnore'],  [g:leader_key_plugin, 'c', 's'], ':CocConfig <CR>', 'Edit coc-settings.json')
call utils#AddKey(['nnore'],  [g:leader_key_plugin, 'c', 'c'], ':CocCommand<Space>', 'CocCommand')
call utils#AddKey(['n'],      [g:leader_key_plugin, 'c', 'r'], '<Plug>(coc-rename)', 'Rename Symbol')
call utils#AddKey(['n', 'v'], [g:leader_key_plugin, 'c', 't'], ['<Plug>(coc-translator-p)', '<Plug>(coc-translator-pv)'], 'Translate')
call utils#AddKey(['n', 'v'], [g:leader_key_plugin, 'c', 'T'], ['<Plug>(coc-translator-e)', '<Plug>(coc-translator-ev)'], 'Translate Echo')
call utils#AddKey(['n', 'x'], [g:leader_key_plugin, 'c', 'f'], '<Plug>(coc-format-selected)', 'Format')
call utils#AddKey(['n'],      [g:leader_key_plugin, 'c', 'a'], '<Plug>(coc-codeaction)', 'Code Action')
call utils#AddKey(['n'],      [g:leader_key_plugin, 'c', 'n'], '<Plug>(coc-diagnostic-next)', 'Next Error')
call utils#AddKey(['n'],      [g:leader_key_plugin, 'c', 'p'], '<Plug>(coc-diagnostic-prev)', 'Previous Error')
call utils#AddKey(['n'],      [g:leader_key_plugin, 'c', 'i'], '<Plug>(coc-implementation)', 'Implementation')
call utils#AddKey(['n'],      [g:leader_key_plugin, 'c', 'R'], '<Plug>(coc-references)', 'References')

"SECTION: colorizer
call utils#AddKeyGroup([g:leader_key_plugin, 'C'], '*Colorizer')
call utils#AddKey(['nnore'], [g:leader_key_plugin, 'C', 'e'], ':ColorHighlight<CR>', 'Enable Color')
call utils#AddKey(['nnore'], [g:leader_key_plugin, 'C', 't'], ':ColorToggle<CR>', 'Toggle Color')
call utils#AddKey(['nnore'], [g:leader_key_plugin, 'C', 'c'], ':ColorClear<CR>', 'Clear Color')

"SECTION: tabular
call utils#AddKeyGroup([g:leader_key_plugin, 't'], '*Tabularize')
call utils#AddKey(['vnore'], [g:leader_key_plugin, 't', 't'], ':Tabularize /', 'Tabularize Command')
call utils#AddKey(['vnore'], [g:leader_key_plugin, 't', ','], ':Tabularize /, <CR>', 'Tabularize Using ,')
call utils#AddKey(['vnore'], [g:leader_key_plugin, 't', '='], ':Tabularize /= <CR>', 'Tabularize Using =')
call utils#AddKey(['vnore'], [g:leader_key_plugin, 't', '&'], ':Tabularize /& <CR>', 'Tabularize Using &')

"SECTION: picgo
call utils#AddKeyGroup([g:leader_key_plugin, 'p'], '*PicGo')
call utils#AddKey(['nnore', 'vnore'], [g:leader_key_plugin, 'p', 'c'], ':UploadImageFromClipboard <CR>', 'Upload Image From Clipboard')
" call utils#AddKey(['nnore', 'vnore'], [g:leader_key_plugin, 'p', 'f'], ':UploadImageFile <CR>', 'Upload Image From File System')
