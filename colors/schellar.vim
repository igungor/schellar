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

hi Comment         ctermfg=244
" *Comment         any comment

hi Constant        ctermfg=236
" *Constant        any constant
"  String	       a string constant: "this is a string"
"  Character       a character constant: 'c', '\n'
"  Number	       a number constant: 234, 0xff
"  Boolean	       a boolean constant: TRUE, false
"  Float		   a floating point constant: 2.3e10

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

" TODO(ig): these were defined other than 0. test.
" hi SpecialChar     ctermfg=161             cterm=bold
" hi Delimiter       ctermfg=241
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
" *Ignore          left blank, hidden  |hl-Ignore|

hi Error           ctermfg=0   ctermbg=15
" *Error           any erroneous construct

hi Todo            ctermfg=231 ctermbg=0   cterm=bold
" *Todo            anything that needs extra attention; mostly the
"                  keywords TODO FIXME and XXX

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Extended highlighting
"
" Comments are extracted from `:help highlight-groups`
" """"""""""""""""""""""""""""""""""""""""""""""""""""
hi CursorLine      ctermfg=255 ctermbg=12  cterm=none
hi CursorLineNr    ctermfg=0               cterm=none

hi Cursor          ctermfg=16  ctermbg=253

" vimdiff
hi DiffAdd         ctermfg=0   ctermbg=187
hi DiffChange      ctermfg=0   ctermbg=15
hi DiffDelete      ctermfg=0   ctermbg=15
hi DiffText        ctermfg=0   ctermbg=229 cterm=none

hi Directory       ctermfg=0               cterm=bold
hi ErrorMsg        ctermfg=0   ctermbg=15  cterm=bold
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi IncSearch       ctermfg=193 ctermbg=16

hi SpecialKey      ctermfg=0               cterm=none

hi MatchParen      ctermfg=0   ctermbg=15  cterm=bold
hi ModeMsg         ctermfg=229
hi MoreMsg         ctermfg=229

" complete menu
hi Pmenu           ctermfg=0   ctermbg=230
hi PmenuSel        ctermfg=229 ctermbg=0
hi PmenuSbar                   ctermbg=7
hi PmenuThumb                  ctermbg=0

hi Question        ctermfg=0               cterm=bold
hi Search          ctermfg=0   ctermbg=222 cterm=none

" marks column
hi SignColumn      ctermfg=118 ctermbg=235
hi SpecialComment  ctermfg=245             cterm=bold

hi StatusLine      ctermfg=11
hi StatusLineNC    ctermfg=11
hi Title           ctermfg=0               cterm=bold

hi VertSplit       ctermfg=0   ctermbg=15  cterm=bold
hi VisualNOS                   ctermbg=238
hi Visual                      ctermbg=14
hi WarningMsg      ctermfg=0   ctermbg=15  cterm=bold
hi WildMenu        ctermfg=81  ctermbg=16

hi CursorColumn                ctermbg=236
hi ColorColumn                 ctermbg=7
hi LineNr          ctermfg=248
hi NonText         ctermfg=59

set background=light
