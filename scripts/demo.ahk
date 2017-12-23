#Include ../EQUtilsCommandLine.ahk
^F2::
	canniDance()
	return

	
canniDance() {
	Loop {
		castSitLoop(1,2,4,1)
	}
}

eddieDance() {
	Loop {
		Send {F2}
		healing(1)
		
		Send {F3}
		healing(1)
	}
}

	
cycleMobsAttack() {
	Loop {
		targetNearestNPC()
		sendKeys("/attack on", 4)
	}
}

groupDance() {
	Loop {
		Send {F2}
		assist()
		drowsy()
		
		Send {F5}
		healing(1)
		
		castSitLoop(2,3,4,5)
	}
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




afkInEc() {
	Loop {
		sendKeys("'np", 0)
		Loop, 5 {
			buff()
			summonDrink(1)
			summonFood(1)
		}
	}
}


buff() {
	
	innerFlame(1)		
	dexterousAura(1)	
	strengthen(1)	
	feetLikeCat(1)
		
	return
}



summonFood(byref numberOfCasts) {
	stand()
	do(2) ;forage
	castSitLoop(1,5,8,numberOfCasts)
	sendKeys("/autoi", 0)
	sendKeys("/autoi", 0)
	
}

summonDrink(byref numberOfCasts) {
	stand()
	do(2) ;forage
	castSitLoop(2,5,8,numberOfCasts)
	sendKeys("/autoi", 0)
	sendKeys("/autoi", 0)
}


trueNorth(byref numberOfCasts) {
	castSitLoopTargetNearest(2,2,5,numberOfCasts)
}

spiritOfWolf(byref numberOfCasts) {
	castSitLoop(3,5,32,numberOfCasts)
}

innerFlame(byref numberOfCasts) {
	castSitLoopTargetNearest(4,5,8, numberOfCasts)
}


fleetingFury(byref numberOfCasts) {
	castSitLoop(5,1,8,numberOfCasts)
}

dexterousAura(byref numberOfCasts) {
	castSitLoopTargetNearest(6,5,12, numberOfCasts)
}

strengthen(byref numberOfCasts) {
	castSitLoopTargetNearest(7,5,8, numberOfCasts)
}


feetLikeCat(byref numberOfCasts) {
	castSitLoopTargetNearest(8,5,12, numberOfCasts)
}

castSitLoopTargetNearest(byref spellNumber, castDelay, sitDuration, loopCount) {	
	targetNearestNPC()
	stand()
	sendKeys("/wave", 0)
	sit(0)
	castSitLoop(spellNumber,castDelay, sitDuration, loopCount)	
	;fleetingFury(1)
	;spiritOfWolf(1)	
	;fleetingFury(1)	
}