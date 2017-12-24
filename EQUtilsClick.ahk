; right click a box, then shift cursor to box to the right.
; then shift cursor down and repeat
clickBox(byref numberOfUnitsX, numberOfUnitsY, xOrigin, yOrigin) {
	loopNumber = 0
	while(loopNumber < numberOfUnitsY){
		_rightwardRightClick(numberOfUnitsX, xOrigin, yOrigin + loopNumber*40)
		loopNumber := loopNumber + 1
	}
}

; right click a box, then shift cursor to box to the right.
_rightwardRightClick(byref numberOfUnits, xOrigin, yOrigin) {
	loopNumber = 0
	while(loopNumber < numberOfUnits){
		rightClick(xOrigin + loopNumber*40,  yOrigin)
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
