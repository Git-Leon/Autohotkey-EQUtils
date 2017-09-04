stand() {
	sendKeys("/stand", 0)
}

sit(byref x) {
	stand()
	sendKeys("/sit",x)
}

do(byref number) {
	sendKeys("/do " number, 0)
}

say(byref text) {
	sendKeys("/say " text, 0)
}
	
castSit(byref number, castDelay, sitDelay) {
	cast(number, castDelay)
	sit(sitDelay)
}

cast(byref number, x) {
	stand()
	sendKeys("/cast " number, x)
}

sendKeys(byref text, x){
	Send {Enter}
	Clipboard = %text%	
	SendInput ^v
	Send {Enter}
	Sleep 100
	Loop, %x% {
		Sleep 1000
	}
	return
}