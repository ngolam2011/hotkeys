; ------------Variable declerations-------------
VimMode = false
StepToMove = 20
MovingMode = false

;------------Variable declerations-------------
#MaxHotkeysPerInterval 200

;---------------Increase/Descrease Step to move---------------
^>::
	StepToMove := StepToMove + 1
	ToolTip, Step to move: %StepToMove%
		SetTimer, RemoveToolTip, 3000
return
	
^<::
	if StepToMove > 0
		StepToMove := StepToMove - 1
	ToolTip, Step to move: %StepToMove%
	SetTimer, RemoveToolTip, 3000
return

^+R::
	StepToMove = 20
	ToolTip, Step to move: %StepToMove%
	SetTimer, RemoveToolTip, 3000
return
;---------------Increase/Descrease Step to move---------------


;------------Utitility------------
RemoveToolTip:
SetTimer, RemoveToolTip, Off
ToolTip
return
;------------Utitility------------
; ------------Set vim mode-------------
^!V::
	if VimMode = false
	{
		VimMode = true
		ToolTip, Enable Vim Mode
		SetTimer, RemoveToolTip, 3000
	}
	else
	{
		VimMode = false
		ToolTip, Disable Vim Mode
		SetTimer, RemoveToolTip, 3000
	}
return
; ------------Set vim mode-------------


; ------------Set moving mode-------------
^!M::
	if MovingMode = false
	{
		MovingMode = true
		ToolTip, Enable MovingMode Mode
		SetTimer, RemoveToolTip, 3000
	}
	else
	{
		MovingMode = false
		ToolTip, Disable MovingMode Mode
		SetTimer, RemoveToolTip, 3000
	}
return
; ------------Set moving mode-------------

; ------------Vim emulator-------------
#If %VimMode% = 1
	k:: 
		Send, {Up}
	return
	j:: 
		Send, {Down}
	return
	h:: 
		Send, {Left}
	return
	l:: 
		Send, {Right}
	return

return
#If
; ------------Vim emulator-------------


^!c::
	Run, Cmder
return

^!a::
	Run, C:\Program Files (x86)\Anki\anki.exe
return

!q::Send !{F4}
return


^J:: MouseMove, 0, %StepToMove%, 0, R
return

^K:: MouseMove, 0, -%StepToMove%, 0, R
return

^L:: MouseMove, %StepToMove%, 0, 0, R
return

^H:: MouseMove, -%StepToMove%, 0, 0, R
return


^Y:: Click Down
return
^!Y:: 
	Click up right
	Send !{F4}
	
return



; ------------Moving emulator-------------
#If %MovingMode% = 1
	Space::
	Click 2
	return
	
	.::
	Click
	return
#If
; ------------Moving emulator-------------
;---------------------Preference--------------------
/*
^!d::
	InputBox, OutputVar, Lookup, Word to look up?
	if ErrorLevel
		return
	else
		Run, https://www.google.com.vn/search?q=define+%OutputVar%
return

^!t::
	InputBox, OutputVar, Translate, What do you want to translate?
	if ErrorLevel
		return
	else
		Run, https://translate.google.com/?hl=vi#en/vi/%OutputVar%
return

^!g::
	InputBox, OutputVar, Google, What do you want to google?
	if ErrorLevel
		return
	else
		Run, https://www.google.com.vn/search?q=%OutputVar%
return

^!,::
	Send, {Ctrl Down}c{Ctrl Up}
	query = %Clipboard%
	Run, https://translate.google.com/?hl=vi#en/vi/%query%
return
*/
;---------------------Preference--------------------