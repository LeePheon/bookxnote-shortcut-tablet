Global penupbuttonstate := true
Global pendownbuttonstate := true

;bookxnote
#ifwinactive ahk_exe BookxNotePro.exe
				+space::send {PgUp}
				r::
				if penupbuttonstate
				send {pgdn}
				else
				send r
				return
				return
				e::
				if penupbuttonstate
				send {pgup}
				else
				send e
				return
				return
				t::
				if penupbuttonstate
				send {down}
				else
				send t
				return
				return
				w::
				if penupbuttonstate
				send {up}
				else
				send w
				return
				return
				j::
				if penupbuttonstate
				send {down}
				else
				send j
				return
				return
				k::
				if penupbuttonstate
				send {up}
				else
				send k
				return
				return
				
				;pen using
				
				^r::

					if penupbuttonstate
						{
						send ^a
						penupbuttonstate:= false
						pendownbuttonstate:=NOT(pendownbuttonstate)
						;Msgbox %penupbuttonstate%
						}
					else 
						{
						send ^r
						penupbuttonstate:= true
						pendownbuttonstate:=NOT(pendownbuttonstate)
						;Msgbox %penupbuttonstate%
						}
					return
				return

				^e::
					if pendownbuttonstate
						{
						send ^u
						pendownbuttonstate:= false
						penupbuttonstate:=NOT(penupbuttonstate)
						;Msgbox %pendownbuttonstate%
						}
					else 
						{
						send ^e
						pendownbuttonstate:=true
						penupbuttonstate:=NOT(penupbuttonstate)
						;Msgbox %pendownbuttonstate%
						}
					return
				return
return
