#Include ../EQUtilsCommandLine.ahk
#Include ../EQUtilsClick.ahk
#Include ./loot_mob.ahk

^F2::	
	Loop {		
		autoInventory(5)
		stand()
		target("an", 2)
		sendKeys("/loot", 2)
		lootMob()

		
		Send {ESC}
		sit(30)
	}

	
^F3::
	run AutoHotkey.exe camping_jester.ahk ; create new
