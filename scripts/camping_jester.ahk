#Include ../EQUtilsCommandLine.ahk
#Include ../EQUtilsClick.ahk
#Include ./loot_mob.ahk

^F2::	
	Loop {		
		stand()
		autoInventory(5)
		target("an")
		sendKeys("/loot", 2)
		lootMob()

		
		Send {ESC}
		sit(60)
	}

	
^F3::
	run AutoHotkey.exe camping_jester.ahk ; create new
