#Include ../EQUtilsClick.ahk

lootMob() {
	SetCapsLockState, off
	rightClick(40, 425)
	Sleep, 1500
	clickBox(4, 2, 40, 425)
}