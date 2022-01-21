#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk
^F4::
	SetCapsLockState, off
	skillUp()


^+F4::
	run AutoHotkey.exe skill_up.ahk ; create new


skillUp() {
	Loop {
		castSit(1, 5, 32)
		targetSelf()
		castSit(5, 5, 32)
	}
}	