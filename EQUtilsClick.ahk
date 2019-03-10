; right click a box, then shift cursor to box to the right.
; then shift cursor down and repeat
clickBoxDefaultOffset(byref numberOfUnitsX, numberOfUnitsY, xOrigin, yOrigin) {
	clickBox(numberOfUnitsX, numberOfUnitsY, 40, 40, xOrigin, yOrigin)
}



; right click a box, then shift cursor to box to the right.
; then shift cursor down and repeat
clickBox(byref numberOfUnitsX, numberOfUnitsY, xOffset, yOffset, xOrigin, yOrigin) {
	loopNumber = 0
	while(loopNumber < numberOfUnitsY){
		rightwardRightClick(numberOfUnitsX, xOffset, xOrigin, yOrigin + loopNumber * yOffset)
		loopNumber := loopNumber + 1
	}
}


; right click a box, then shift cursor to box to the right.
rightwardRightClick(byref numberOfUnits, xOffset, xOrigin, yOrigin) {
	loopNumber = 0
	while(loopNumber < numberOfUnits){
		rightClick(xOrigin + loopNumber * xOffset,  yOrigin)
		Sleep, 100
		loopNumber := loopNumber + 1
	}
}


; right click a box, then shift cursor to box to the right.
rightwardLeftClick(byref numberOfUnits, xOffset, xOrigin, yOrigin) {
	loopNumber = 0
	while(loopNumber < numberOfUnits){
		leftClick(xOrigin + loopNumber * xOffset,  yOrigin)
		Sleep, 100
		loopNumber := loopNumber + 1
	}
}

; left click at specified x and y coordinate
leftClick(byref xOrigin, yOrigin) {
	_click(0, xOrigin, yOrigin)
}

; right click at specified x and y coordinate
rightClick(byref xOrigin, yOrigin) {
	_click(1, xOrigin, yOrigin)
}


; click [ left or right ] at specified x and y coordinate
_click(byref rightClickFlag, xOrigin, yOrigin) {
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
