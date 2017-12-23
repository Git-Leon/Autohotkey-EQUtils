^F2::
WinWait, EverQuest, 
;IfWinNotActive, EverQuest, , WinActivate, EverQuest, 
WinWaitActive, EverQuest, 


;1360 = center of left column of bag

Send, {CTRLDOWN}
Loop, 10 {
	bagAndGuard(1360, 705) ; top left bag
	bagAndGuard(1360, 740)
	bagAndGuard(1360, 770)
	bagAndGuard(1360, 805) ; bottom left bag
	leftMouseClickWait(1480, 720, 300) ; hand in



	bagAndGuard(1395, 700) ; top right bag
	bagAndGuard(1395, 740)
	bagAndGuard(1395, 770)
	bagAndGuard(1395, 805) ; bottom right bag
	leftMouseClickWait(1480, 720, 300) ; hand in
	Send, {CTRLUP}
}
return


bagAndGuard(byref xCoord, yCoord) {
	bagAndGuardd(xCoord, yCoord, 1580, 725)
}


bagAndGuardd(byref xCoordBag, yCoordBag, xCoordGuard, yCoordGuard) {
	leftMouseClick(xCoordBag, yCoordBag)
	leftMouseClick(xCoordGuard, yCoordGuard)
}


leftMouseClick(byref xCoord, yCoord) {
	leftMouseClickWait(xCoord, yCoord, 125)
}

leftMouseClickWait(byref xCoord, yCoord, waitDuration) {
	IfWinNotActive, EverQuest, , WinWaitActive, EverQuest
	

	Send, {CTRLDOWN}
	MouseClick, left, %xCoord%, %yCoord%
	Send, {CTRLUP}
	Sleep, %waitDuration%
	return
}