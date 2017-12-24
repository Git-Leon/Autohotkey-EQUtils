clickBox(byref numberOfUnitsX, numberOfUnitsY, xOrigin, yOrigin) {
	loopNumber = 0
	while(loopNumber < numberOfUnitsY){
		rightwardRightClick(numberOfUnitsX, xOrigin, yOrigin + loopNumber*40)
		loopNumber := loopNumber + 1
	}
}

rightwardRightClick(byref numberOfUnits, xOrigin, yOrigin) {
	loopNumber = 0	
	while(loopNumber < numberOfUnits){
		rightClick(xOrigin + loopNumber*40,  yOrigin)
		Sleep, 100
		loopNumber := loopNumber + 1
	}
}

leftClick(byref xOrigin, yOrigin) {
	click(0, xOrigin, yOrigin)
}

rightClick(byref xOrigin, yOrigin) {
	click(1, xOrigin, yOrigin)
}

click(byref rightClickFlag, xOrigin, yOrigin) {
	IfWinNotActive, EverQuest, , WinWaitActive, EverQuest
	
	MouseMove, xOrigin, yOrigin ; move to coordinate
	Sleep, 250
	
	IfWinNotActive, EverQuest, , WinWaitActive, EverQuest	
	if(%rightClickFlag% == 0) {		
		MouseClick, left,  xOrigin,  yOrigin
	} else {
		MouseClick, right,  xOrigin,  yOrigin
	}
}