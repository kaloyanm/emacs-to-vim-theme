" Vim color scheme
" Name: Emacs
" Maintainer: Gemini
" License: MIT

set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "emacs"

" Color Palette
let s:colors = {
      \ 'none': ['NONE', 'NONE'],
      \ 'black': ['#000000', 0],
      \ 'white': ['#FFFFFF', 15],
      \ 'red1': ['#FF0000', 9],
      \ 'red2': ['#EE0000', 9],
      \ 'red3': ['#CD0000', 1],
      \ 'green': ['#00CD00', 2],
      \ 'green2': ['#00EE00', 10],
      \ 'green3': ['#00CD00', 2],
      \ 'blue1': ['#0000FF', 4],
      \ 'blue2': ['#0000EE', 4],
      \ 'medium_blue': ['#0000CD', 4],
      \ 'dark_slate_blue': ['#483D8B', 60],
      \ 'purple': ['#A020F0', 5],
      \ 'cyan': ['#00FFFF', 6],
      \ 'cyan2': ['#00EEEE', 14],
      \ 'cyan3': ['#00CDCD', 6],
      \ 'dark_cyan': ['#008B8B', 30],
      \ 'yellow2': ['#EEEE00', 11],
      \ 'yellow3': ['#CDCD00', 3],
      \ 'magenta2': ['#EE00EE', 13],
      \ 'magenta3': ['#CD00CD', 5],
      \ 'magenta4': ['#8B008B', 91],
      \ 'firebrick': ['#B22222', 88],
      \ 'violet_red4': ['#8B2252', 89],
      \ 'forest_green': ['#228B22', 22],
      \ 'sienna': ['#A0522D', 130],
      \ 'brown': ['#A52A2A', 1],
      \ 'grey20': ['#333333', 236],
      \ 'grey50': ['#7F7F7F', 244],
      \ 'grey75': ['#BFBFBF', 250],
      \ 'grey85': ['#D9D9D9', 253],
      \ 'grey90': ['#E5E5E5', 254],
      \ 'grey95': ['#F2F2F2', 255],
      \ 'lightgoldenrod2': ['#EEC900', 220],
      \ 'darkseagreen2': ['#B4EEB4', 151],
      \ 'paleturquoise': ['#AFEEEE', 159],
      \ 'lightskyblue1': ['#87CEFF', 117],
      \ 'khaki1': ['#FFF68F', 227],
      \ 'rosybrown1': ['#FFC1C1', 224],
      \ 'royalblue3': ['#4876FF', 63],
      \ 'darkorange': ['#FF8C00', 208],
      \ 'turquoise': ['#40E0D0', 44],
      \ 'lightyellow': ['#FFFFE0', 230],
      \ 'ddffdd': ['#DDFFDD', 194],
      \ 'ffdddd': ['#FFDDDD', 224],
      \ 'aaffaa': ['#AAFFAA', 157],
      \ 'ffff55': ['#FFFF55', 227],
      \ 'ffbbbb': ['#FFBBBB', 224],
      \ 'unspecified_bg': ['#FFFFFF', 15],
      \ 'unspecified_fg': ['#000000', 0],
      \ 'unspecified': ['#FFFFFF', 'NONE']
      \ }

fun! s:hi(group, fg, bg, attr)
  let fg_color = get(s:colors, a:fg, s:colors.unspecified_fg)
  let bg_color = get(s:colors, a:bg, s:colors.unspecified_bg)

  let fg_hex = fg_color[0]
  let fg_cterm = fg_color[1]
  let bg_hex = bg_color[0]
  let bg_cterm = bg_color[1]

  exec "hi " . a:group .
        \ " guifg=" . fg_hex . " ctermfg=" . fg_cterm .
        \ " guibg=" . bg_hex . " ctermbg=" . bg_cterm .
        \ " gui=" . a:attr . " cterm=" . a:attr
endfun

" Syntax Highlighting
hi Normal guifg=#000000 ctermfg=0 guibg=#FFFFFF ctermbg=none gui=none cterm=none
call s:hi('Cursor', 'none', 'black', 'none')
call s:hi('Comment', 'firebrick', 'none', 'none')
call s:hi('Constant', 'dark_cyan', 'none', 'none')
call s:hi('String', 'violet_red4', 'none', 'none')
call s:hi('Character', 'violet_red4', 'none', 'none')
call s:hi('Number', 'unspecified_fg', 'none', 'none')
call s:hi('Boolean', 'dark_cyan', 'none', 'none')
call s:hi('Float', 'unspecified_fg', 'none', 'none')
call s:hi('Function', 'blue1', 'none', 'none')
call s:hi('Identifier', 'sienna', 'none', 'none')
call s:hi('Statement', 'purple', 'none', 'none')
call s:hi('Operator', 'unspecified_fg', 'none', 'none')
call s:hi('PreProc', 'dark_slate_blue', 'none', 'none')
call s:hi('Type', 'forest_green', 'none', 'none')
call s:hi('Special', 'violet_red4', 'none', 'none')
call s:hi('Underlined', 'royalblue3', 'none', 'underline')
call s:hi('Ignore', 'grey50', 'unspecified_bg', 'none')
call s:hi('Error', 'red1', 'unspecified_bg', 'none')
call s:hi('Todo', 'red1', 'yellow2', 'bold')
call s:hi('Title', 'green', 'unspecified_bg', 'bold')
call s:hi('Directory', 'blue1', 'unspecified_bg', 'none')
call s:hi('ErrorMsg', 'red1', 'none', 'none')
call s:hi('WarningMsg', 'darkorange', 'none', 'none')
call s:hi('MoreMsg', 'forest_green', 'none', 'none')
call s:hi('Question', 'forest_green', 'unspecified_bg', 'none')
call s:hi('ModeMsg', 'black', 'grey75', 'none')
call s:hi('LineNr', 'grey50', 'unspecified_bg', 'none')
call s:hi('CursorLineNr', 'grey50', 'unspecified_bg', 'none')
call s:hi('Visual', 'unspecified', 'lightgoldenrod2', 'none')
call s:hi('VisualNOS', 'unspecified', 'lightgoldenrod2', 'none')
call s:hi('Search', 'unspecified', 'khaki1', 'none')
call s:hi('IncSearch', 'lightskyblue1', 'magenta3', 'none')
call s:hi('StatusLine', 'black', 'grey75', 'none')
call s:hi('StatusLineNC', 'grey20', 'grey90', 'none')
call s:hi('VertSplit', 'grey20', 'grey90', 'none')
call s:hi('TabLine', 'black', 'grey85', 'none')
call s:hi('TabLineSel', 'black', 'grey75', 'bold')
call s:hi('TabLineFill', 'black', 'grey85', 'none')
call s:hi('Pmenu', 'black', 'lightyellow', 'none')
call s:hi('PmenuSel', 'unspecified', 'darkseagreen2', 'none')
call s:hi('PmenuSbar', 'unspecified', 'grey75', 'none')
call s:hi('PmenuThumb', 'unspecified', 'grey50', 'none')
call s:hi('DiffAdd', 'unspecified', 'ddffdd', 'none')
call s:hi('DiffChange', 'unspecified', 'unspecified_fg', 'none')
call s:hi('DiffDelete', 'unspecified', 'ffdddd', 'none')
call s:hi('DiffText', 'unspecified', 'ffff55', 'none')
call s:hi('SpellBad', 'red1', 'unspecified_bg', 'underline')
call s:hi('SpellCap', 'blue1', 'unspecified_bg', 'underline')
call s:hi('SpellRare', 'purple', 'unspecified_bg', 'underline')
call s:hi('SpellLocal', 'dark_cyan', 'unspecified_bg', 'underline')
call s:hi('MatchParen', 'unspecified', 'turquoise', 'bold')

" Cleanup
delfunction s:hi
unlet s:colors
