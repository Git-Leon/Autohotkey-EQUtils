#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk
^F2::
	SetCapsLockState, off
	castSitCycle(2,1.5,5)

^+F2::
	run AutoHotkey.exe canni_dance.ahk ; create new
