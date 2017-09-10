#Include EQUtils.ahk
^F2::
	healingDance()


	

	
cycleMobsAttack() {
	Loop {
		targetNearestNPC()
		sendKeys("/attack on", 4)
	}
}

healingDance() {
	Loop {
		Send {F2}
		assist()
		drowsy()
		Loop, 3 {
			Send {F2}
			healing(1)		
		}		
	}
}


drowsy() {
	sendKeys("/g Casting 'Drowsy' on [ %t]", 0)
	sendKeys("/g Keep [ %t ] within casting range of me.", 0)
	castSitLoop(6, 4, 12, 1)
}



healing(byref numberOfCasts) {
	sendKeys("/g Casting 'Healing' on [ %t]", 0)
	sendKeys("/g [ %t ] stay in range", 0)
	castSitLoop(3, 4, 28, numberOfCasts)
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
	castSitLoopTargetNearest(2,5,8,numberOfCasts)
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