#Include ../EQUtilsCommandLine.ahk

^F3::
	dragCorpse() {
		Loop {
			sendKeys("/corpse", .3)
		}
	}
	dragCorpse()



^+F3::
	run AutoHotkey.exe drag_corpse.ahk ; create new