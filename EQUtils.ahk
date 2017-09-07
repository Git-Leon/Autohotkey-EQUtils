targetNearest() {
	Send {F1}
	Send {Numpad6}
}


stand() {
	sendKeys("/stand", 0)
}

sit(byref sitDuration) {
	stand()
	sendKeys("/sit",sitDuration)
}

do(byref number) {
	sendKeys("/do " number, 0)
}

say(byref text) {
	sendKeys("/say " text, 0)
}

castSitLoop(byref number, castDelay, sitDuration, loopCount) {
	Loop, %loopCount% {
		castSit(number, castDelay, sitDuration)
	}
}
	
castSit(byref number, castDelay, sitDuration) {
	cast(number, castDelay)
	sit(sitDuration)
}

cast(byref number, castDelay) {
	stand()
	sendKeys("/cast " number, castDelay)
}

sendKeys(byref text, postDelay){
	IfWinNotActive, EverQuest, , WinWaitActive, EverQuest
	
	Send {Enter}
	Clipboard = %text%	
	SendInput ^v
	Send {Enter}
	Sleep 100
	Loop, %postDelay% {				
		Sleep 1000
	}
	return
}