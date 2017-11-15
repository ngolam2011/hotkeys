; ------------Variable declerations-------------
VimMode = 0	

;------------Variable declerations-------------
#MaxHotkeysPerInterval 200
; ------------Set vim mode-------------
^!V::
	if VimMode
		VimMode = 1
	else
		VimMode = 0
return
; ------------Set vim mode-------------


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

^!c::
	Run, Cmder
return

^!a::
	Run, C:\Program Files (x86)\Anki\anki.exe
return

^!w::
	Run, www.google.com
return

!q::Send !{F4}
return

^J:: MouseMove, 0, 10, 0, R
return

^K:: MouseMove, 0, -10, 0, R
return

^L:: MouseMove, 10, 0, 0, R
return

^H:: MouseMove, -10, 0, 0, R
return

^O:: Click Down
return
^!O:: Click up right
return

^I:: Click
return

^!I:: Click 2
return

#If VimMode
	^!Z:: 
		Click WheelUp
	return


#If VimMode = 1
D:: 
	Click WheelDown
return