^!l::
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
