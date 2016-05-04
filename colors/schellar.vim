hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="schellar"

let s:palette = {}
if &background == "light"
    let s:palette.fg = [0, "#000000"]
    let s:palette.bg = [15, "#080808"]
    let s:palette.grey0 = [244, "#080808"]
    let s:palette.grey1 = [253, "#080808"]
    let s:palette.grey2 = [11, "#080808"]
    let s:palette.grey3 = [7, "#080808"]
    let s:palette.bgdark = [222, "#080808"]
else
    let s:palette.fg = [249, "#000000"]
    let s:palette.bg = [8, "#080808"]
    let s:palette.grey0 = [244, "#080808"]
end

" HL is a helper function to generate highlight commands based on cterm/gui
" etc.
function! s:HL(item, fgColor, bgColor, style, ...)
    let target = 'cterm'
    let pindex = 0
    if has('gui_running')
        let target = 'gui'
        let pindex = 1
    end

    let command  = 'hi ' . a:item
    let command .= ' ' . target . 'fg=' . a:fgColor[pindex]
    let command .= ' ' . target . 'bg=' . a:bgColor[pindex]
    let command .= ' ' . target . '=' . a:style

    execute command
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""
" Preliminary group names to highlight
"
" Comments are extracted from `:help group-name`
""""""""""""""""""""""""""""""""""""""""""""""""
call s:HL('Normal', s:palette.fg, s:palette.bg, 'none')
"  Normal          normal text

call s:HL('Comment', s:palette.grey0, s:palette.bg, 'none')
" *Comment         any comment

call s:HL('Constant', s:palette.fg, s:palette.bg, 'none')
" *Constant        any constant
"  String          a string constant: "this is a string"
"  Character       a character constant: 'c', '\n'
"  Number          a number constant: 234, 0xff
"  Boolean         a boolean constant: TRUE, false
"  Float           a floating point constant: 2.3e10

call s:HL('Identifier', s:palette.fg, s:palette.bg, 'bold')
" *Identifier      any variable name
"  Function        function name (also: methods for classes)

call s:HL('Statement', s:palette.fg, s:palette.bg, 'bold')
" *Statement       any statement
"  Conditional     if, then, else, endif, switch, etc.
"  Repeat          for, do, while, etc.
"  Label           case, default, etc.
"  Operator        "sizeof", "+", "*", etc.
"  Keyword         any other keyword
"  Exception       try, catch, throw

call s:HL('PreProc', s:palette.fg, s:palette.bg, 'bold')
" *PreProc         generic Preprocessor
"  Include         preprocessor #include
"  Define          preprocessor #define
"  Macro           same as Define
"  PreCondit       preprocessor #if, #else, #endif, etc.

call s:HL('Type', s:palette.fg, s:palette.bg, 'bold')
" *Type            int, long, char, etc.
"  StorageClass    static, register, volatile, etc.
"  Structure       struct, union, enum, etc.
"  Typedef         a typedef

call s:HL('Special', s:palette.fg, s:palette.bg, 'bold')
" *Special         any special symbol
"  SpecialChar     special character in a constant
"  Tag             you can use CTRL-] on this
"  Delimiter       character that needs attention
"  SpecialComment  special things inside a comment
"  Debug           debugging statements

call s:HL('Underlined', s:palette.fg, s:palette.bg, 'underline')
" *Underlined      text that stands out, HTML links

call s:HL('Ignore', s:palette.fg, s:palette.fg, 'none')
" *Ignore          left blank, hidden

call s:HL('Error', s:palette.fg, s:palette.bg, 'none')
" *Error           any erroneous construct

call s:HL('Todo', s:palette.bg, s:palette.grey0, 'none')
" *Todo            anything that needs extra attention; mostly the
"                  keywords TODO,FIXME and XXX

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extended highlighting
"
" Comments are extracted from `:help highlight-groups`
" """"""""""""""""""""""""""""""""""""""""""""""""""""
call s:HL('ColorColumn', s:palette.bg, s:palette.grey3, 'none')
"  ColorColumn     used for the columns set with 'colorcolumn'

call s:HL('Cursor', s:palette.bg, s:palette.grey1, 'none')
"  Cursor          the character under the cursor

hi CursorColumn    ctermfg=0   ctermbg=236
"  CursorColumn    the screen column that the cursor is in when 'cursorcolumn' is set

hi CursorLine      ctermfg=255 ctermbg=12  cterm=none
"  CursorLine      the screen line that the cursor is in when 'cursorline' is set

call s:HL('Directory', s:palette.fg, s:palette.bg, 'bold')
"  Directory       directory names (and other special names in listings)

hi DiffAdd         ctermfg=0   ctermbg=187
"  DiffAdd         diff mode: Added line

call s:HL('DiffChange', s:palette.fg, s:palette.bg, 'none')
"  DiffChange      diff mode: Changed line

call s:HL('DiffDelete', s:palette.fg, s:palette.bg, 'none')
"  DiffDelete      diff mode: Deleted line

hi DiffText        ctermfg=0   ctermbg=229 cterm=none
"  DiffText        diff mode: Changed text within a changed line

call s:HL('ErrorMsg', s:palette.fg, s:palette.bg, 'bold')
"  ErrorMsg        error messages on the command line

call s:HL('VertSplit', s:palette.fg, s:palette.bg, 'bold')
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

call s:HL('CursorLineNr', s:palette.fg, s:palette.bg, 'none')
"  CursorLineNr    like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.

call s:HL('MatchParen', s:palette.fg, s:palette.bg, 'bold')
"  MatchParen      the character under the cursor or just before it, if it
"                  is a paired bracket, and its match.

call s:HL('ModeMsg', s:palette.fg, s:palette.bg, 'none')
"  ModeMsg         'showmode' message (e.g., "-- INSERT --")

call s:HL('MoreMsg', s:palette.fg, s:palette.bg, 'none')
"  MoreMsg         |more-prompt| 
"
hi NonText         ctermfg=59
"  NonText         '@' at the end of the window, characters from 'showbreak'
"                  and other characters that do not really exist in the text
"                  (e.g., ">" displayed when a double-wide character doesn't
"                  fit at the end of the line).

hi Pmenu           ctermfg=0   ctermbg=230
"  Pmenu           popup menu: normal item.

hi PmenuSel        ctermfg=229 ctermbg=0
"  PmenuSel        popup menu: selected item.

call s:HL('PmenuSbar', s:palette.fg, s:palette.grey3, 'none')
"  PmenuSbar       popup menu: scrollbar.

call s:HL('MatchParen', s:palette.fg, s:palette.bg, 'none')
"  PmenuThumb      popup menu: Thumb of the scrollbar.

call s:HL('Question', s:palette.fg, s:palette.bg, 'bold')
"  Question        prompt and yes/no questions

call s:HL('Search', s:palette.fg, s:palette.bgdark, 'none')
"  Search          last search pattern highlighting
"                  Also used for highlighting the current line in the quickfix
"                  window and similar items that need to stand out.

call s:HL('SpecialKey', s:palette.fg, s:palette.bg, 'none')
"  SpecialKey      meta and special keys listed with ":map", also for text used
"                  to show unprintable characters in the text, 'listchars'.
"                  Generally: text that is displayed differently from what it
"                  really is.

" TODO(ig): assign proper colorcodes to spell group.
call s:HL('SpellBad', s:palette.fg, s:palette.bg, 'italic')
"  SpellBad        Word that is not recognized by the spellchecker.
"                  This will be combined with the highlighting used otherwise.

call s:HL('SpellCap', s:palette.fg, s:palette.bg, 'italic')
" SpellCap         Word that should start with a capital.
"                  This will be combined with the highlighting used otherwise.

call s:HL('SpellLocal', s:palette.fg, s:palette.bg, 'italic')
"  SpellLocal      Word that is recognized by the spellchecker as one that is
"                  used in another region. This will be combined with the
"                  highlighting used otherwise.

call s:HL('SpellRare', s:palette.fg, s:palette.bg, 'italic')
"  SpellRare       Word that is recognized by the spellchecker as one that is
"                  hardly ever used. This will be combined with the
"                  highlighting used otherwise.

call s:HL('StatusLine', s:palette.grey2, s:palette.bg, 'none')
"  StatusLine      status line of current window

call s:HL('StatusLineNC', s:palette.grey2, s:palette.bg, 'none')
"  StatusLineNC    status lines of not-current windows
"                  Note: if this is equal to "StatusLine" Vim will use "^^^" in
"                  the status line of the current window.

call s:HL('Title', s:palette.fg, s:palette.bg, 'bold')
"  Title           titles for output from ":set all", ":autocmd" etc.

hi Visual          ctermfg=0   ctermbg=14
"  Visual          Visual mode selection

hi VisualNOS       ctermfg=0   ctermbg=238
"  VisualNOS       Visual mode selection when vim is "Not Owning the Selection".
"                  Only X11 Gui's gui-x11 and xterm-clipboard supports this.

call s:HL('WarningMsg', s:palette.fg, s:palette.bg, 'bold')
"  WarningMsg      warning messages

hi WildMenu        ctermfg=81  ctermbg=16
"  WildMenu        current match in 'wildmenu' completion

""" C
call s:HL('cPreCondit', s:palette.fg, s:palette.bg, 'bold')
