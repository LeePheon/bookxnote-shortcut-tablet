;bookxnote
global hand:=true
global pen:=true
^!F1::reload
#ifwinactive ahk_exe BookxNotePro.exe
	;pen using

	^r::
		if (hand)
			{
			send ^r
			; msgbox 1
			hand:=NOT(hand)
			pen:=true
			}
		else
			{
			send ^a
			hand:=NOT(hand)
			pen:=true
			}
		return
	return
	
	^e::
		if(pen)
		{
			send ^e
			pen:=NOT(pen)
			hand:=true
		}
		else 
		{
			send ^u
			pen:=NOT(pen)
			hand:=true
		}
		return
	return
return
