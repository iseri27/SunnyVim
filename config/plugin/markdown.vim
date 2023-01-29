"PLUGIN: markdown-preview
" when leave buffer, preview window will not close
let g:mkdp_auto_close = 0
" when mkdp_refresh_slow to 1, only refresh when leave buffer
let g:mkdp_refresh_slow = 1
let g:mkdp_browser = 'falkon'
let g:mkdp_page_title = '「${name}」'

"PLUGIN: vim-markdown
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_new_list_item_indent = 0

" vim: nowrap
