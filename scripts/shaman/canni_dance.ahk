#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk
^!1::
	SetCapsLockState, off
	castSitCycle(2,1.2,6)


canniDance(byref numberOfTimes) {
	castSitLoop(2,1.5,6, %numberOfTimes%)
}
