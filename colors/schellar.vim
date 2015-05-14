hi clear

if exists("syntax_on")
    syntax reset
endif

let g:colors_name="schellar"

hi Normal          ctermfg=0   ctermbg=15
hi CursorLine      ctermfg=255 ctermbg=12    cterm=none
hi CursorLineNr    ctermfg=0                 cterm=none

hi Boolean         ctermfg=0
hi Character       ctermfg=0
hi Number          ctermfg=0
hi String          ctermfg=0
hi Conditional     ctermfg=0                 cterm=bold
hi Constant        ctermfg=236               cterm=bold
hi Cursor          ctermfg=16  ctermbg=253
hi Debug           ctermfg=225               cterm=bold
hi Define          ctermfg=81
hi Delimiter       ctermfg=241
hi Comment         ctermfg=244

" vimdiff
hi DiffAdd                     ctermbg=24
hi DiffChange      ctermfg=181 ctermbg=239
hi DiffDelete      ctermfg=162 ctermbg=53
hi DiffText                    ctermbg=102   cterm=bold

hi Directory       ctermfg=0                 cterm=bold
hi Error           ctermfg=15  ctermbg=0
hi ErrorMsg        ctermfg=15  ctermbg=0     cterm=bold
hi Exception       ctermfg=0                 cterm=bold
hi Float           ctermfg=0
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi Function        ctermfg=0
hi Identifier      ctermfg=0                 cterm=bold
hi Ignore          ctermfg=244 ctermbg=232
hi IncSearch       ctermfg=193 ctermbg=16

hi keyword         ctermfg=0                 cterm=bold
hi Label           ctermfg=0                 cterm=bold
hi Macro           ctermfg=0
hi SpecialKey      ctermfg=0

hi MatchParen      ctermfg=233  ctermbg=208  cterm=bold
hi ModeMsg         ctermfg=229
hi MoreMsg         ctermfg=229
hi Operator        ctermfg=161

" complete menu
hi Pmenu           ctermfg=0   ctermbg=230
hi PmenuSel        ctermfg=229 ctermbg=0
hi PmenuSbar                   ctermbg=0
hi PmenuThumb      ctermfg=81

hi PreCondit       ctermfg=0                 cterm=bold
hi PreProc         ctermfg=0
hi Question        ctermfg=81
hi Repeat          ctermfg=0                 cterm=bold
hi Search          ctermfg=0   ctermbg=222   cterm=NONE

" marks column
hi SignColumn      ctermfg=118 ctermbg=235
hi SpecialChar     ctermfg=161               cterm=bold
hi SpecialComment  ctermfg=245               cterm=bold
hi Special         ctermfg=0

hi Statement       ctermfg=0                 cterm=bold
hi StatusLine      ctermfg=238 ctermbg=253
hi StatusLineNC    ctermfg=244 ctermbg=232
hi StorageClass    ctermfg=0
hi Structure       ctermfg=0
hi Tag             ctermfg=0
hi Title           ctermfg=0                 cterm=bold
hi Todo            ctermfg=231 ctermbg=0     cterm=bold

hi Typedef         ctermfg=0
hi Type            ctermfg=0                 cterm=none
hi Underlined      ctermfg=244               cterm=underline

hi VertSplit       ctermfg=0   ctermbg=15   cterm=bold
hi VisualNOS                   ctermbg=238
hi Visual                      ctermbg=14
hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
hi WildMenu        ctermfg=81  ctermbg=16

hi CursorColumn                ctermbg=236
hi ColorColumn                 ctermbg=236
hi LineNr          ctermfg=248
hi NonText         ctermfg=59

hi SpecialKey      ctermfg=59

" spell check
hi SpellBad                     ctermbg=52
hi SpellCap                     ctermbg=17
hi SpellLocal                   ctermbg=17
hi SpellRare       ctermfg=none ctermbg=none  cterm=reverse

set background=light
