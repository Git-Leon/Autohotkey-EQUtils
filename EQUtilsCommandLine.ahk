autoInventory(byref numberOfItems) {
	Loop, %numberOfItems% {
		sendKeys("/autoi", 0)
	}
}

assist() {
	group("Assisting [ %t ]")
	sendKeys("/as", 2)
}

target(byref name, delay) {
	sendKeys("/tar " %name%, %delay%)
}

targetSelf() {
	Send {F1}
}

targetNearestNPC() {
	Send {Numpad5}
}

targetNearestPC() {
	targetSelf()
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


group(byref text) {
	sendKeys("/g " text, 0)
}

say(byref text) {
	sendKeys("/say " text, 0)
}

castSitLoop(byref number, castDelay, sitDuration, loopCount) {
	Loop, %loopCount% {
		castSit(number, castDelay, sitDuration)
	}
}


castSitCycle(byref number, castDelay, sitDuration) {
	Loop {
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
	
	Send +{Down} ; shift + down-arrow
	Clipboard = %text%	
	SendInput ^v
	Sleep 20
	Send {Enter}
	Sleep 100
	
	Loop, %postDelay% {				
		Sleep 1000
	}
	return
}