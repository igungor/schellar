if !has("gui_running") && &t_Co < 256
  finish
endif

set background=light
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "schellar"

hi Normal ctermbg=254 ctermfg=0

hi Constant   ctermbg=254 ctermfg=236
hi String     ctermbg=254 ctermfg=236
hi Number     ctermbg=254 ctermfg=0
hi Boolean    ctermbg=254 ctermfg=0
hi Comment    guifg=#888888 guibg=#FFFFFF ctermfg=244

hi Operator   ctermbg=254 ctermfg=0
hi Statement  ctermbg=254 ctermfg=0 gui=bold cterm=bold
hi Keyword    ctermbg=254 ctermfg=0 gui=bold cterm=bold
hi Type       ctermbg=254 ctermfg=0 gui=italic cterm=italic
hi Identifier ctermbg=254 ctermfg=0 gui=bold cterm=bold
hi Function   ctermbg=254 ctermfg=0 gui=bold cterm=bold
hi LineNr     ctermbg=254 ctermfg=248
