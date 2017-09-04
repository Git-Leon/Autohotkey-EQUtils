#Include EQUtils.ahk
^F2::
	say("Casting SoW across from Newb Ramp in Ruins (-2000, +150)")
	return



main() {
	Loop {
		say("Casting SoW across from Newb Ramp in Ruins (-2000, +150)")
		sendKeys("/o To receive buffs, open trade window, then close it.", 0)
		
		say("To receive buffs, open trade window, then close it.")
		say("Summoning 3 pods of water.")
		say("This should take approximately 24 seconds")
		say("One moment, please...")
		summonDrink(3)
		
		say("To receive buffs, open trade window, then close it.")
		say("Practicing Divination.")
		say("This should take approximately 24 seconds")
		say("One moment, please . . .")
		trueNorth(3)
		
		Loop, 6 {
			say("To receive buffs, open trade window, then close it.")
			say("Giving players 15 seconds to open trade window.")
			sit(15)
			say("I am ready to begin buffing!")			
			say("[ %t ] is my current target.")
			say("Buffs will be casted on [ %t ]")
			improveCasting()
		}
	}
	return	
}

improveCasting() {	
	say("Casting Inner Fire on [ %t ]")
	castSit(3,5,8)
	
	say("Casting Spirit of Wolf on [ %t ]")
	castSit(8,5,8) ;spirit of wolf
	
	say("To receive buffs, open trade window, then close it.")
	sendKeys("/tar Scaleskin", 2)
	castSit(6,5,8) ;burst of flame
		
	sendKeys("/hug", 0)
	sit(18)
	return
}


trueNorth(byref number) {
	Loop, %number% {
		stand()
		castSit(2,5,8)
	}
}

summonDrink(byref number) {
	Loop, %number% {
		stand()
		do(2) ;forage
		castSit(7,5,8)		
		sendKeys("/autoi", 0)
		sendKeys("/autoi", 0)
	}
}