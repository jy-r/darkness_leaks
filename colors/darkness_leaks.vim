"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"							"
"	D a  r  k					"
"  		   n   e   s    s			"
"			      L  e  a  k   s		"
"							"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set background=dark

highlight clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='Darkness_Leaks'


" Foreground Colours
"------------------------------------------------------------------------
"Xterm Name		Number   HEX		Comment
"Green3			40	 #00d700	"40  - 	Operator
"MediumPurple4		60	 #5f5f87	"60  - 	markdownH3, VimwikiHeader3, 
"PaleTurquoise4		66	 #5f8787	"66  - 	markdownH2, VimwikiHeader2
"CadetBlue		72	 #5faf87	"72  - 	Label,VimwikiLink
"SeaGreen3		78	 #5fd787	"78  - 	VertSplit, Special
"MediumTurquoise	80	 #5fd7d7	"80  - 	Number, boolean, Float
"DarkMagenta		90	 #870087	"90  - 	Comment
"DeepPink4		125	 #af005f	"125 - 	Identifier, Function, Statement,
"							Conditional, Repeat, KeyWord, Exception, 
"							PreProc, Include, Define, Macro, 
"							PreCondit, Type, StorageClass, 
"							Structure, Typedef, StartifyHeader, 
"							VimwikiCheckBoxDone
"DarkOrange3		130	 #af5f00	"130 - 	spellbad
"IndianRed		131	 #af5f5f	"131 - 	spellcap
"HotPink3		132	 #af5f87	"132 - 	SpellLocal
"DarkGoldenrod		136	 #af8700	"136 - 	SpellRare
"DarkOrange3		166	 #d75f00	"166 - 	MatchParen, Tag, markdownH1, VimwikiHeader1
"Tan			180	 #d7af87	"180 - 	Constant, Character
"Grey42			242	 #6c6c6c	"246 - 	Normal
"Grey58			246	 #949494	"242 - 	LineNr

"Background Colours
"------------------------------------------------------------------------
"Xterm Name		Number   HEX		Comment
"MediumPurple4		60	 #5f5f87	"60  - 	 Search/IncSearch 
"Grey11			234	 #1c1c1c	"234 -	 Normal
"Grey15			235	 #262626	"235 -	 CursorLine
"Grey19			236	 #303030	"236 -	 Folded, Pmenu
"Grey23			237	 #3a3a3a	"237 -	 Visual
"Grey27			238	 #444444	"238 -	 Error, PmanuSel


"------------------------------------------------------------------------
let s:Green3		 = { "gui": "#00d700", "cterm": "40"  }
let s:MediumPurple4	 = { "gui": "#5f5f87", "cterm": "60"  }
let s:PaleTurquoise4	 = { "gui": "#5f8787", "cterm": "66"  }
let s:CadetBlue	 	 = { "gui": "#5faf87", "cterm": "72"  }
let s:SeaGreen3	 	 = { "gui": "#5fd787", "cterm": "78"  }
let s:MediumTurquoise	 = { "gui": "#5fd7d7", "cterm": "80"  }
let s:DarkMagenta	 = { "gui": "#870087", "cterm": "90"  }
let s:DeepPink4	 	 = { "gui": "#af005f", "cterm": "125" }
let s:DarkOrange3	 = { "gui": "#af5f00", "cterm": "130" }
let s:IndianRed	 	 = { "gui": "#af5f5f", "cterm": "131" }
let s:HotPink3	 	 = { "gui": "#af5f87", "cterm": "132" }
let s:DarkGoldenrod	 = { "gui": "#af8700", "cterm": "136" }
let s:DarkOrange3	 = { "gui": "#d75f00", "cterm": "166" }
let s:Tan		 = { "gui": "#d7af87", "cterm": "180" }
let s:Grey11		 = { "gui": "#1c1c1c", "cterm": "234" }
let s:Grey15		 = { "gui": "#262626", "cterm": "235" }
let s:Grey19		 = { "gui": "#303030", "cterm": "236" }
let s:Grey23		 = { "gui": "#3a3a3a", "cterm": "237" }
let s:Grey27		 = { "gui": "#444444", "cterm": "238" }
let s:Grey42		 = { "gui": "#6c6c6c", "cterm": "242" }
let s:Grey58		 = { "gui": "#949494", "cterm": "246" }
"------------------------------------------------------------------------

let s:bg              = s:Grey11
let s:norm            = s:Grey58

"------------------------------------------------------------------------
" Utility function by noahfrederick - https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg") ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg") ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction
"------------------------------------------------------------------------

" Main 
"------------------------------------------------------------------------
"
call s:h("Normal",        	{"bg": s:bg, "fg": s:norm})
call s:h("CursorLine",    	{"bg": s:Grey15})
call s:h("LineNr",      	{"fg": s:Grey42})
call s:h("VertSplit",      	{"fg": s:SeaGreen3})

call s:h("Comment",       	{"fg": s:DarkMagenta, 	"gui": "italic", "cterm": "italic"})

call s:h("Pmenu",      		{"bg": s:Grey19})
call s:h("PmenuSel",      	{"bg": s:Grey27, 	"gui:": "bold", "cterm" : "bold"})

call s:h("Error",      		{"bg": s:Grey27})

call s:h("Folded",      	{"bg": s:Grey19})
call s:h("Visual",      	{"bg": s:Grey23})
"------------------------------------------------------------------------

" Ordered by colour 
"------------------------------------------------------------------------
" Tan
call s:h("String",      	{"fg": s:Tan, 		"gui": "italic", "cterm": "italic"})
hi! link Constant           	String	
hi! link Character        	String	

" Green3
call s:h("Operator",      	{"fg": s:Green3})

" DarkOrange3
call s:h("MatchPatern",      	{"fg": s:DarkOrange3, 	"gui:": "bold", "cterm" : "bold"})
hi! link Tag 			Matchpatern
hi! link markdownH1		Matchpatern
hi! link VimwikiHeader1		Matchpatern

" PaleTurqouise4
call s:h("markdownH2",      	{"fg": s:PaleTurquoise4, "gui:": "bold", "cterm" : "bold"})
hi! link VimwikiHeader2 	markdownH2

" MediumPurple4
call s:h("Search",      	{"bg": s:MediumPurple4})
call s:h("IncSearch",   	{"bg": s:MediumPurple4})
call s:h("markdownH3",      	{"fg": s:MediumPurple4, "gui:": "bold", "cterm" : "bold"})
hi! link VimwikiHeader3 	markdownH3

" CadetBlue
call s:h("Label",      		{"fg": s:CadetBlue})
hi! link VimwikiLink 		Label

" MediumTorquiose
call s:h("Number",      	{"fg": s:MediumTurquoise})
hi! link Boolean		Number
hi! link Float			Number

" DeepPink4
call s:h("Statement",     	{"fg": s:DeepPink4, 	"gui:": "bold", "cterm" : "bold"})
call s:h("Function",      	{"fg": s:DeepPink4})
hi! link Identifier		Function
hi! link Conditional		Function
hi! link Repeat			Function
hi! link KeyWord		Function
hi! link Exception		Function
hi! link PreProc		Function
hi! link Include		Function
hi! link Define			Function
hi! link Macro			Function
hi! link PreCondit		Function
hi! link Type			Function
hi! link StorageClass		Function
hi! link Structure		Function
hi! link Typedef		Function
hi! link StartifyHeader		Function
hi! link VimwikiCheckBoxDone	Function

" Spelling
"------------------------------------------------------------------------
call s:h("SpellBad",      	{"fg": s:DarkOrange3})
call s:h("SpellCap",      	{"fg": s:IndianRed})
call s:h("SpellRare",     	{"fg": s:HotPink3})
call s:h("SpellLocal",     	{"fg": s:HotPink3})

"------------------------------------------------------------------------
" None 
"------------------------------------------------------------------------
call s:h("StatusLine",     	{})
call s:h("StatusLineNC",   	{})
call s:h("Special",      	{})
call s:h("Cursor", 		{})
call s:h("CursorLineNR", 	{})
call s:h("CursorColumn", 	{})
call s:h("FoldColumn", 		{})
call s:h("SignColumn", 		{})
call s:h("ColorColumn",		{})
call s:h("TabLine", 		{})
call s:h("TabLineFill",		{})
call s:h("TabLineSel", 		{})
call s:h("Directory", 		{})
call s:h("StatusLine", 		{})
call s:h("StatusLineNC", 	{})
call s:h("WildMenu", 		{})
call s:h("Question", 		{})
call s:h("Title", 		{})
call s:h("ModeMsg", 		{})
call s:h("MoreMsg", 		{})
call s:h("VisualNOS", 		{})
call s:h("NonText", 		{})
call s:h("Todo", 		{})
call s:h("Underlined", 		{})
call s:h("ErrorMsg", 		{})
call s:h("WarningMsg", 		{})
call s:h("Ignore", 		{})
call s:h("SpecialKey", 		{})
call s:h("Constant", 		{})
call s:h("StringDelimiter", 	{})
call s:h("SpecialChar",		{})
call s:h("Delimiter", 		{})
call s:h("SpecialComment", 	{})
call s:h("Debug", 		{})
call s:h("DiffAdd", 		{})
call s:h("DiffChange", 		{})
call s:h("DiffDelete", 		{})
call s:h("DiffText", 		{})
call s:h("PmenuSbar", 		{})
call s:h("PmenuThumb", 		{})
