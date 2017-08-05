
"" function! TestMeth( hlite, msg )
""     echohl "HL: " . a:hlite
""     echohl "-- end hilite --"
"" 
""     echomsg "   <MSG> " . a:msg
""     echomsg "<ENDMSG>"
"" endfunction

function! SelectBuffer()
    tabnew
    read "ls"
endfunction

