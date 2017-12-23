#SingleInstance Force
#Include EQUtils.ahk
^F2::
	SetCapsLockState, off
	castSitCycle(2,2,5)
	
^F3::
	run AutoHotkey.exe canni_dance.ahk ; create new