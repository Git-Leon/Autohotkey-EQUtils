#Include ../EQUtilsClick.ahk
SetCapsLockState, off

lootMob() {
	stand()
	_lootMob()

	bagsClose()
	escape(20)
	Sleep, 500

	sit(1)
	_lootMob()
}


_lootMob() {
	rightClick(40, 425)
	Sleep, 1500
	clickBoxDefaultOffset(8, 1, 40, 425)
}
