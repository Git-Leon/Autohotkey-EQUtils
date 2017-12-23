#SingleInstance Force
#Include EQUtilsCommandLine.ahk
^F4::
	SetCapsLockState, off
	groupDance()
	
^F5::
	run AutoHotkey.exe group_dance.ahk ; create new

groupDance() {
	Loop {
		Send {F2}
		assist()
		petAttack()
		
		Send {F2}
		healing(1)
	}
}	



petAttack() {
	group("Sending pet to attack [ %t ].")
	sendKeys("/pet attack", 0)
}

drowsy() {
	group("Casting 'Drowsy' on [ %t]")
	group("Keep [ %t ] within casting range of me.")
	castSitLoop(6, 4, 12, 1)
}



healing(byref numberOfCasts) {
	group("Casting 'Healing' on [ %t]")
	group("[ %t ] stay in range")
	castSitLoop(3, 4, 32, numberOfCasts)
}


