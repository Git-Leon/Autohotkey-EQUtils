#Include ../EQUtilsClick.ahk
SetCapsLockState, off

lootMob() {
	stand()
	_lootMob()

	escape(20)
	Sleep, 500

	sit(1)
	_lootMob()
}


_lootMob() {
	rightClick(40, 425)
	Sleep, 1500
	clickBox(8, 1, 40, 425)
}
