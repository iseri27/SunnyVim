let g:transparent_groups = ['Normal', 'Comment', 'Constant', 'Special', 'Identifier',
                            \ 'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String',
                            \ 'Function', 'Conditional', 'Repeat', 'Operator', 'Structure',
                            \ 'LineNr', 'NonText', 'SignColumn', 'CursorLineNr', 'EndOfBuffer']

" Pmenu
let g:transparent_groups += ['Pmenu']

" coc.nvim
let g:transparent_groups += ['NormalFloat', 'CocFloating']

autocmd VimEnter * call SetupLightlineColors()
function SetupLightlineColors() abort
  " transparent background in statusbar
  let l:palette = lightline#palette()

  " let s:p.{mode}.{where} = [ [ {guifg}, {guibg}, {ctermfg}, {ctermbg} ], ... ]`
  " let l:palette.normal = {
  "     \ 'left': [[ '#008080', 'NONE', 6, 'NONE' ]],
  "     \ 'middle': [[ '#008080', 'NONE', 6, 'NONE' ]],
  "     \ 'right': [[ '#008080', 'NONE', 6, 'NONE' ]],
  "   \ }
  let l:palette.inactive = l:palette.normal
  let l:palette.visual = l:palette.normal
  let l:palette.insert = l:palette.normal
  let l:palette.replace = l:palette.normal
  " Tab Line
  " let l:palette.tabline = {
  "     \ 'left': [[ '#0000ff', 'NONE', 12, 'NONE' ]],
  "     \ 'tabsel': [[ '#008080', 'NONE', 6, 'NONE' ]],
  "     \ 'middle': [[ 'NONE', 'NONE', 'NONE', 'NONE' ]],
  "     \ 'right': [[ 'NONE', 'NONE', 'NONE', 'NONE' ]],
  "     \ }

  call lightline#colorscheme()
endfunction
