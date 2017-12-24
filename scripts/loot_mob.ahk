#Include ../EQUtilsClick.ahk

lootMob() {
	SetCapsLockState, off
	rightClick(40, 425)
	Sleep, 1500
	clickBox(8, 1, 40, 425)
}