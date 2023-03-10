lua << EOF
require('adoc_pdf_live').setup {
    enabled = false,
    -- The viewer command must be like `command <file>`
    viewer = 'zathura',
    binary = 'adoc2pdf',
    params = '',
    debug = false,
    style = '',
    style_regex = 'style\\.ya?ml'
}
EOF
