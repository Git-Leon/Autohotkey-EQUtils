#SingleInstance Force
#Include ./../../EQUtilsCommandLine.ahk
#Include ./../../EQUtilsClick.ahk
SetCapsLockState, off



^F2:: ; CTRL + F2 to start
	Loop {
		infernoShield()
	}

^+F2:: ; CTRL + Shift + F2 to restart
	run AutoHotkey.exe damage_shield.ahk ; create new




infernoShield() {
	castSitLoopTargetNearestPC(3,5,22,10)
}
