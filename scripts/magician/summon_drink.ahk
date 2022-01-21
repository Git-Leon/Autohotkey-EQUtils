#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk

^F4::
	SetCapsLockState, off
	sendKeys("/autoi", 0)
	afkInEc()


^+F4::
	run AutoHotkey.exe summon_drink.ahk ; create new



afkInEc() {
	Loop {
		summonFood(1)			
		;wordOfPain(1)
	}
}

wordOfPain(byref numberOfCasts) {
	targetSelf()
	castSitLoop(8,3,52,numberOfCasts)
}

courage(byref numberOfCasts) {
	targetSelf()
	castSitLoop(4,3,26,numberOfCasts)
}

minorHealing(byref numberOfCasts) {
	targetSelf()
	castSitLoop(2,2,26,numberOfCasts)
}


summonFood(byref numberOfCasts) {
	castSitLoop(6,5,8,numberOfCasts)
	Loop, %numberOfCasts% {
		sendKeys("/autoi", 0)
		sendKeys("/autoi", 0)
	}
	
}

summonDrink(byref numberOfCasts) {
	castSitLoop(7,5,8,numberOfCasts)
	Loop, %numberOfCasts% {
		sendKeys("/autoi", 0)
		sendKeys("/autoi", 0)
	}
}
