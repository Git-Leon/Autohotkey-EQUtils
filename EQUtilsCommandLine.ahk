autoInventory(byref numberOfItems) {
	Loop, %numberOfItems% {
		sendKeys("/autoi", 0)
	}
}

assist() {
	group("Assisting [ %t ]")
	sendKeys("/as", 2)
}

spellBookOpen() {
	stand()
	sendKeys("/book", 0)
}

bagsClose() { ; TODO - move to different utils
	waitForEverQuest()
	Send, n
}

bagsOpen() { ; TODO - move to different utils
	waitForEverQuest()
	Send, b
}

escape(byref numberOfTimes) { ; TODO - move to different utils
	Loop, %numberOfTimes% {
		waitForEverQuest()
		Send {ESC}
	}
}

leftArrow(byref numberOfTimes) {
	Loop, %numberOfTimes% {
		waitForEverQuest()
		Send {Left}
	}
}

rightArrow(byref numberOfTimes) {
	Loop, %numberOfTimes% {
		waitForEverQuest()
		Send {Right}
	}
}


target(byref name, delay) {
	sendKeys("/tar " name, delay)
}

targetSelf() {
	waitForEverQuest()
	Send {F1}
}

targetPet() {
	sendKeys("/pet target", 0)
}

targetNearestNPC() {
	waitForEverQuest()
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
	castSitLoop(number, castDelay, sitDuration, 999)
}

castSit(byref number, castDelay, sitDuration) {
	cast(number, castDelay)
	sit(sitDuration)
}


cast(byref number, castDelay) {
	sing(number, 0.5)
	sing(number, castDelay)
}

sing(byref number, singDelay) {
	stand()
	sendKeys("/stops", 0)
	sendKeys("/cast " number, singDelay)
	sendKeys("/dance", 0)
}

sendKeys(byref text, postDelay){
	_sendKeys(text, postDelay * 1000)
}


_sendKeys(byref text, postDelay){
	waitForEverQuest()

	Send +{Down} ; shift + down-arrow
	Clipboard = %text%
	SendInput ^v
	Sleep 20
	Send {Enter}
	Sleep 50

	Sleep %postDelay%

	return
}


waitForEverQuest() {
	IfWinNotActive, EverQuest, , WinWaitActive, EverQuest
}
