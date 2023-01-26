Global penupbuttonstate := false
Global pendownbuttonstate := false

;bookxnote
#ifwinactive ahk_exe BookxNotePro.exe
				+space::send {PgUp}
				;pen using
				^r::
					if penupbuttonstate
						{
						send ^a
						penupbuttonstate:= false
						;Msgbox %penupbuttonstate%
						}
					else 
						{
						send ^r
						penupbuttonstate:= true
						;Msgbox %penupbuttonstate%
						}
					return
				return

				^e::
					if pendownbuttonstate
						{
						send ^u
						pendownbuttonstate:= false
						;Msgbox %pendownbuttonstate%
						}
					else 
						{
						send ^e
						pendownbuttonstate:=true
						;Msgbox %pendownbuttonstate%
						}
					return
				return

return
