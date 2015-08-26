hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="schellar"

""""""""""""""""""""""""""""""""""""""""""""""""
" Preliminary group names to highlight
"
" Comments are extracted from `:help group-name`
""""""""""""""""""""""""""""""""""""""""""""""""
hi Normal          ctermfg=0   ctermbg=15
"  Normal          normal text

hi Comment         ctermfg=244
" *Comment         any comment

hi Constant        ctermfg=0
" *Constant        any constant
"  String          a string constant: "this is a string"
"  Character       a character constant: 'c', '\n'
"  Number          a number constant: 234, 0xff
"  Boolean         a boolean constant: TRUE, false
"  Float           a floating point constant: 2.3e10

hi Identifier      ctermfg=0               cterm=bold
" *Identifier      any variable name
"  Function        function name (also: methods for classes)

hi Statement       ctermfg=0               cterm=bold
" *Statement       any statement
"  Conditional     if, then, else, endif, switch, etc.
"  Repeat          for, do, while, etc.
"  Label           case, default, etc.
"  Operator        "sizeof", "+", "*", etc.
"  Keyword         any other keyword
"  Exception       try, catch, throw

hi PreProc         ctermfg=0               cterm=bold
" *PreProc         generic Preprocessor
"  Include         preprocessor #include
"  Define          preprocessor #define
"  Macro           same as Define
"  PreCondit       preprocessor #if, #else, #endif, etc.

hi Type            ctermfg=0               cterm=none
" *Type            int, long, char, etc.
"  StorageClass    static, register, volatile, etc.
"  Structure       struct, union, enum, etc.
"  Typedef         a typedef

hi Special         ctermfg=0               cterm=bold
" *Special         any special symbol
"  SpecialChar     special character in a constant
"  Tag             you can use CTRL-] on this
"  Delimiter       character that needs attention
"  SpecialComment  special things inside a comment
"  Debug           debugging statements

hi Underlined      ctermfg=0               cterm=underline
" *Underlined      text that stands out, HTML links

hi Ignore          ctermfg=0   ctermbg=0   cterm=none
" *Ignore          left blank, hidden

hi Error           ctermfg=0   ctermbg=15
" *Error           any erroneous construct

hi Todo            ctermfg=15     ctermbg=244 cterm=bold
" *Todo            anything that needs extra attention; mostly the
"                  keywords TODO,FIXME and XXX

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extended highlighting
"
" Comments are extracted from `:help highlight-groups`
" """"""""""""""""""""""""""""""""""""""""""""""""""""
hi ColorColumn     ctermfg=0   ctermbg=7
"  ColorColumn     used for the columns set with 'colorcolumn'

hi Cursor          ctermfg=16  ctermbg=253
"  Cursor          the character under the cursor

hi CursorColumn    ctermfg=0   ctermbg=236
"  CursorColumn    the screen column that the cursor is in when 'cursorcolumn' is set

hi CursorLine      ctermfg=255 ctermbg=12  cterm=none
"  CursorLine      the screen line that the cursor is in when 'cursorline' is set

hi Directory       ctermfg=0               cterm=bold
"  Directory       directory names (and other special names in listings)

hi DiffAdd         ctermfg=0   ctermbg=187
"  DiffAdd         diff mode: Added line
"
hi DiffChange      ctermfg=0   ctermbg=15
"  DiffChange      diff mode: Changed line
"
hi DiffDelete      ctermfg=0   ctermbg=15
"  DiffDelete      diff mode: Deleted line
"
hi DiffText        ctermfg=0   ctermbg=229 cterm=none
"  DiffText        diff mode: Changed text within a changed line
"
hi ErrorMsg        ctermfg=0   ctermbg=15  cterm=bold
"  ErrorMsg        error messages on the command line
"
hi VertSplit       ctermfg=0   ctermbg=15  cterm=bold
"  VertSplit       the column separating vertically split windows

hi Folded          ctermfg=67  ctermbg=16
"  Folded          line used for closed folds

hi FoldColumn      ctermfg=67  ctermbg=16
"  FoldColumn      'foldcolumn'

hi SignColumn      ctermfg=118 ctermbg=235
"  SignColumn      column where |signs| are displayed

hi IncSearch       ctermfg=193 ctermbg=16
"  IncSearch       'incsearch' highlighting; also used for the text replaced with :s///c"

hi LineNr          ctermfg=248
"  LineNr          line number for ":number" and ":#" commands, and when 'number'
"                  or 'relativenumber' option is set.

hi CursorLineNr    ctermfg=0               cterm=none
"  CursorLineNr    like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

hi MatchParen      ctermfg=0   ctermbg=15  cterm=bold
"  MatchParen      the character under the cursor or just before it, if it
"                  is a paired bracket, and its match.

hi ModeMsg         ctermfg=229
"  ModeMsg         'showmode' message (e.g., "-- INSERT --")

hi MoreMsg         ctermfg=229
"  MoreMsg         |more-prompt|

hi NonText         ctermfg=59
"  NonText         '@' at the end of the window, characters from 'showbreak'
"                  and other characters that do not really exist in the text
"                  (e.g., ">" displayed when a double-wide character doesn't
"                  fit at the end of the line).

hi Pmenu           ctermfg=0   ctermbg=230
"  Pmenu           popup menu: normal item.

hi PmenuSel        ctermfg=229 ctermbg=0
"  PmenuSel        popup menu: selected item.

hi PmenuSbar                   ctermbg=7
"  PmenuSbar       popup menu: scrollbar.

hi PmenuThumb                  ctermbg=0
"  PmenuThumb      popup menu: Thumb of the scrollbar.

hi Question        ctermfg=0               cterm=bold
"  Question        prompt and yes/no questions

hi Search          ctermfg=0   ctermbg=222 cterm=none
"  Search          last search pattern highlighting
"                  Also used for highlighting the current line in the quickfix
"                  window and similar items that need to stand out.

hi SpecialKey      ctermfg=0               cterm=none
"  SpecialKey      meta and special keys listed with ":map", also for text used
"                  to show unprintable characters in the text, 'listchars'.
"                  Generally: text that is displayed differently from what it
"                  really is.

" TODO(ig): assign proper colorcodes to spell group.
hi SpellBad        ctermfg=0 ctermbg=15  cterm=italic
"  SpellBad        Word that is not recognized by the spellchecker.
"                  This will be combined with the highlighting used otherwise.

hi SpellCap        ctermfg=0 ctermbg=15  cterm=italic
" SpellCap         Word that should start with a capital.
"                  This will be combined with the highlighting used otherwise.

hi SpellLocal      ctermfg=0 ctermbg=15  cterm=italic
"  SpellLocal      Word that is recognized by the spellchecker as one that is
"                  used in another region. This will be combined with the
"                  highlighting used otherwise.

hi SpellRare       ctermfg=0 ctermbg=15  cterm=italic
"  SpellRare       Word that is recognized by the spellchecker as one that is
"                  hardly ever used. This will be combined with the
"                  highlighting used otherwise.

hi StatusLine      ctermfg=11
"  StatusLine      status line of current window

hi StatusLineNC    ctermfg=11
"  StatusLineNC    status lines of not-current windows
"                  Note: if this is equal to "StatusLine" Vim will use "^^^" in
"                  the status line of the current window.

hi Title           ctermfg=0               cterm=bold
"  Title           titles for output from ":set all", ":autocmd" etc.

hi Visual          ctermfg=0   ctermbg=14
"  Visual          Visual mode selection

hi VisualNOS       ctermfg=0   ctermbg=238
"  VisualNOS       Visual mode selection when vim is "Not Owning the Selection".
"                  Only X11 Gui's gui-x11 and xterm-clipboard supports this.

hi WarningMsg      ctermfg=0   ctermbg=15  cterm=bold
"  WarningMsg      warning messages

hi WildMenu        ctermfg=81  ctermbg=16
"  WildMenu        current match in 'wildmenu' completion

set background=light
