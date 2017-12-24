#SingleInstance Force

#Include ../EQUtilsCommandLine.ahk
#Include ../EQUtilsClick.ahk
#Include ./loot_mob.ahk

^F2:: ; CTRL + F2 to start
	Loop {		
		autoInventory(5)
		stand()
		target("an", 2)		
		sendKeys("/loot", 2)
		lootMob()
		
		Send, n
		Send {ESC}
		Send, b
		
		Sleep, 250		
		sit(60)		
	}

	
^+F2:: ; CTRL + Shift + F2 to restart
	run AutoHotkey.exe camping_jester.ahk ; create new
