#Include ../EQUtilsCommandLine.ahk

cornocopia(byref numberOfTimes) {
	Loop, %numberOfTimes% {
	castSitLoop(6, 4, 5, 1)
	castSitLoop(7, 4, 5, 1)
	autoInventory(3)
	}
}
