if exists("b:current_syntax")
    finish
endif

syntax keyword jazzKeyword fun grab
syntax keyword jazzKeyword struct grab
syntax keyword jazzBoolean true false
syntax keyword jazzBoolean bool 
syntax keyword jazzKeyword break continue else if for return in switch while inline
syntax keyword jazzKeyword var init deinit import module
highlight link jazzKeyword Keyword 

syntax match jazzFunction "\zs\(\k\w*\)*\s*\ze"
highlight link jazzFunction jazzFunction

syntax keyword jazzPreProc if ifdef endif 
highlight link jazzPreProc PreProc 

syntax keyword jazzType int int8 in16 int32 int64 uint uint8 uint16 uint32 uint64 
syntax keyword jazzType float float32 float64 
syntax keyword jazzType String StringRef char Array Map
highlight link jazzType Type 

syntax match jazzOperator "\v\*"
syntax match jazzOperator "\v/"
syntax match jazzOperator "\v\%"
syntax match jazzOperator "\v\+"
syntax match jazzOperator "\v\-"
syntax match jazzOperator "\v\^"
syntax match jazzOperator "\v\>>"
syntax match jazzOperator "\v\<<"
syntax match jazzOperator "\v\=="
syntax match jazzOperator "\v\>"
syntax match jazzOperator "\v\<"
syntax match jazzOperator "\v[a-zA-z]+"
syntax match jazzOperator "\v\&\&"
syntax match jazzOperator "\v &"
syntax match jazzOperator "\v\|\|"
syntax match jazzOperator "\v |"
syntax match jazzStr "\v#[0-9a-f]+"
syntax match jazzStr /\c\<\%(\d\+\%(e[+-]\=\d\+\)\=\|0b[01]\+\|0o\o\+\|0x\x\+\)>/
syntax region jazzStr start=/\v"/ skip = /\v\\./ end=/\v"/
highlight link jazzStr String
highlight link jazzNumber String

syntax region jazzComment start="//" end="$"
syntax region jazzMComment start="/*" end="*/"

highlight link jazzComment Comment 
highlight link jazzMComment Comment

let b:current_syntax = "jazz"





