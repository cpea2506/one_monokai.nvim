syn keyword rustKeyword dyn
syn match rustOperator display "[.;:,]"
syn match rustParamName "\w\+\s*\(:\?\)\@=" contained

syn region rustFuncParens start="\(fn\s\+.*(\(&self\)\?\)\@<=" end="\().*[{;]\)\@=" contains=rustSelf, rustKeyword, rustType, rustParamName, rustOperator, rustSigil, rustStorage

syn region rustClosureParens start="\([=(]\s*|\)\@<=" end="|\@=" contains=rustParamName, rustType, rustKeyword, rustOperator, rustSigil, rustStorage

" Match all words that start with capital letter as type
syn match rustType "\u\w*"

hi def link rustQuestionMark rustOperator
hi def link rustIdentifier rustType
hi def link rustClosureParens rustOperator
hi def link rustCommentLineDoc rustCommentLine
