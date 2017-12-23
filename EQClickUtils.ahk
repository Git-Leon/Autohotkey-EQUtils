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
	click(left, xOrigin, yOrigin)
}

rightClick(byref xOrigin, yOrigin) {
	click(right, xOrigin, yOrigin)
}

click(byref rightClickFlag, xOrigin, yOrigin) {
	MouseClick, %rightClickFlag%,  xOrigin,  yOrigin	
}