#SingleInstance Force
#Include EQUtils.ahk
^F2::
	SetCapsLockState, off
	Loop, 60 {
		sendKeys("/autoi", 0)
		sendKeys("/autoi", 0)
		castSitLoop(2, 4, 5, 1)
		castSitLoop(3, 4, 5, 1)		
	}
	
	
^F3::
	run AutoHotkey.exe cornocopia.ahk ; create new