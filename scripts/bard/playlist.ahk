#SingleInstance Force
#Include ./BardUtils.ahk
SetCapsLockState, off



^F2::
  melody(1,2,3,4)

^+F2::
	run AutoHotkey.exe playlist.ahk ; create new
