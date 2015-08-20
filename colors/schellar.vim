hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="schellar"

hi Normal          ctermfg=0   ctermbg=15
hi CursorLine      ctermfg=255 ctermbg=12  cterm=none
hi CursorLineNr    ctermfg=0               cterm=none

hi Boolean         ctermfg=0
hi Character       ctermfg=0
hi Number          ctermfg=0
hi String          ctermfg=0
hi Conditional     ctermfg=0               cterm=bold
hi Constant        ctermfg=236             cterm=bold
hi Cursor          ctermfg=16  ctermbg=253
hi Debug           ctermfg=225             cterm=bold
hi Define          ctermfg=81
hi Delimiter       ctermfg=241
hi Comment         ctermfg=244

" vimdiff
hi DiffAdd         ctermfg=0   ctermbg=187
hi DiffChange      ctermfg=0   ctermbg=15
hi DiffDelete      ctermfg=0   ctermbg=15
hi DiffText        ctermfg=0   ctermbg=229 cterm=none

hi Directory       ctermfg=0               cterm=bold
hi Error           ctermfg=0   ctermbg=15
hi ErrorMsg        ctermfg=0   ctermbg=15  cterm=bold
hi Exception       ctermfg=0               cterm=bold
hi Float           ctermfg=2
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi Function        ctermfg=2
hi Identifier      ctermfg=0               cterm=bold
hi IncSearch       ctermfg=193 ctermbg=16

hi keyword         ctermfg=0               cterm=bold
hi Label           ctermfg=0               cterm=bold
hi Macro           ctermfg=0
hi SpecialKey      ctermfg=0               cterm=none

hi MatchParen      ctermfg=0   ctermbg=15  cterm=bold
hi ModeMsg         ctermfg=229
hi MoreMsg         ctermfg=229
hi Operator        ctermfg=161

" complete menu
hi Pmenu           ctermfg=0   ctermbg=230
hi PmenuSel        ctermfg=229 ctermbg=0
hi PmenuSbar                   ctermbg=0
hi PmenuThumb      ctermfg=81

hi PreCondit       ctermfg=0               cterm=bold
hi PreProc         ctermfg=2
hi Question        ctermfg=81
hi Repeat          ctermfg=0               cterm=bold
hi Search          ctermfg=0   ctermbg=222 cterm=none

" marks column
hi SignColumn      ctermfg=118 ctermbg=235
hi SpecialChar     ctermfg=161             cterm=bold
hi SpecialComment  ctermfg=245             cterm=bold
hi Special         ctermfg=2

hi Statement       ctermfg=0               cterm=bold
hi StatusLine      ctermfg=238 ctermbg=253
hi StatusLineNC    ctermfg=244 ctermbg=232
hi StorageClass    ctermfg=2
hi Structure       ctermfg=2
hi Tag             ctermfg=2
hi Title           ctermfg=0               cterm=bold
hi Todo            ctermfg=231 ctermbg=0   cterm=bold

hi Typedef         ctermfg=2
hi Type            ctermfg=0               cterm=none
hi Underlined      ctermfg=244             cterm=underline

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
