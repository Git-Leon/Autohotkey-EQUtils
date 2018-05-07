#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk
^F4::
	SetCapsLockState, off
	groupDance()
	
^F5::
	run AutoHotkey.exe group_dance.ahk ; create new

groupDance() {
	Loop {
		haste("Tchar")
		Loop, 5 {
			Send {F4}
			assist()
			petAttack()
			
			target("Tchar", 1)
			healing(1)			
		}
	}
}	




drowsy() {
	group("Casting 'Drowsy' on [ %t]")
	group("Keep [ %t ] within casting range of me.")
	castSitLoop(6, 4, 12, 1)
}

haste(byref name) {
	target(name, 1)
	group("Casting Haste on [ %t ] within the next 5 seconds.")	
	group("[ %t ] stay close.")
	sendKeys("; waiting 5 seconds...", 5)
	
	castSit(4, 3, 0)
}



healing(byref numberOfCasts) {
	group("Casting 'Healing' on [ %t]")
	group("[ %t ] stay in range")
	castSitLoop(3, 4, 32, numberOfCasts)
}


