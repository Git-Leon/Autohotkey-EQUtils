#Include ../EQUtilsCommandLine.ahk
^F2:: ; CTRL + F2 to run the script
	main()
	return
	
	
main() {
	Loop {
		say("Casting SoW across from Newb Ramp in Ruins (-2000, +150)")
		sendKeys("/o To receive buffs, open trade window, then close it.", 0)
		
		say("To receive buffs, open trade window, then close it.")
		say("Summoning 3 pods of water.")
		say("This should take approximately 24 seconds")
		say("One moment, please...")
		;summonDrink(3)
		
		say("To receive buffs, open trade window, then close it.")
		say("Practicing Divination.")
		say("This should take approximately 24 seconds")
		say("One moment, please . . .")
		;trueNorth(3)
		
		Loop, 6 {
			say("To receive buffs, open trade window, then close it.")
			say("Giving players 15 seconds to open trade window.")
			sit(15)
			say("I am ready to begin buffing!")			
			say("[ %t ] is my current target.")
			say("Buffs will be casted on [ %t ]")
			;improveCasting()
		}
	}
	return	
}