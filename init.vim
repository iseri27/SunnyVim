"============================================================================="
"                ____                        __     ___                       "
"               / ___| _   _ _ __  _ __  _   \ \   / (_)_ __ ___              "
"               \___ \| | | | '_ \| '_ \| | | \ \ / /| | '_ ` _ \             "
"                ___) | |_| | | | | | | | |_| |\ V / | | | | | | |            "
"               |____/ \__,_|_| |_|_| |_|\__, | \_/  |_|_| |_| |_|            "
"                                        |___/                                "
"============================================================================="

let s:config_dir = fnamemodify(expand('<sfile>'), ':h')
let s:config_dir = fnamemodify(expand('<sfile>'), ':h')

call utils#InitFiles(s:config_dir . '/core')
call utils#InitFiles(s:config_dir . '/config')
call utils#InitFiles(s:config_dir . '/keybindings')
call utils#InitFiles(s:config_dir . '/custom')

" vim: nowrap
