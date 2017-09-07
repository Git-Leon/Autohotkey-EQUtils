#Include EQUtils.ahk
^F2::
	Loop {
		Loop, 3 {
			trueNorth(1)
			Loop, 2 {
				buff()
			}
		}
		summonDrink(1)
	}
	return


buff() {
	targetNearest()
	fleetingFury(1)
	
	targetNearest()
	spiritOfWolf(1)
	
	
	
	targetNearest()
	fleetingFury(1)
	
	targetNearest()
	;innerFlame(1)
	

	
	targetNearest()
	fleetingFury(1)
	
	targetNearest()
	spiritOfWolf(1)
	

	
	targetNearest()
	fleetingFury(1)
	
	targetNearest()
	;dexterousAura(1)



	targetNearest()
	fleetingFury(1)
	
	targetNearest()
	spiritOfWolf(1)

	return
}


summonDrink(byref number) {
	Loop, %number% {
		stand()
		do(2) ;forage
		castSit(2,5,8)		
		sendKeys("/autoi", 0)
		sendKeys("/autoi", 0)
	}
}


trueNorth(byref number) {
	castSitLoop(2,5,8,number)
}


spiritOfWolf(byref number) {
	castSitLoop(3,5,24,number)
}

innerFlame(byref number) {
	castSitLoop(4,5,12, number)
}


fleetingFury(byref number) {
	;castSitLoop(5,1,8,number)
}

dexterousAura(byref number) {
	castSitLoop(6,5,12, number)
}