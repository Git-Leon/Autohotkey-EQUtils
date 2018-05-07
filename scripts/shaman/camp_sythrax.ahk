#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk

^F3::
	SetCapsLockState, off
	campSythrax()


^+F3::
	run AutoHotkey.exe camp_sythrax.ahk ; create new

campSythrax() {
	Loop {
		sendKeys("/;camping sythrax begins >:)",0)
		hasteRegenMeditate()
		engageMob(3)
	}
}

engageMob(byref numberOfTimes) {
	Loop, %numberOfTimes% {

		escape(1)
		targetNearestNPC()
		petAttack()
		stand()
		attackOn()

		drowsy(2)
		wait(90)

		combatSelfHeal(1)
		wait(30)

		sit(12)
		sit(12)
	}
}

hasteRegenMeditate() {
	sit(18)
	regen("Scaleskin")
	canniDance(1)
	sit(12)

	regenPet()
	canniDance(1)
	sit(12)



	haste("Scaleskin")
	canniDance(1)
	sit(12)

	hastePet()
	sit(12)
}

haste(byref name) {
	target(name, 1)
	castSit(7, 5, 2)
}

regen(byref name) {
	target(name, 1)
	castSit(4, 6.5, 2)
}

hasteAndRegen(byref name) {
	haste(name)
	regen(name)
}



hasteAndRegenPet() {
	targetPet()
	hasteAndRegen("")
}


regenPet() {
	targetPet()
	regen("")
}

hastePet() {
	targetPet()
	haste("")
}

canniDance(byref numberOfTimes) {
	castSitLoop(2, 1.5, 6, numberOfTimes)
}

combatSelfHeal(byref numberOfTimes) {
  tab() ; target self
	cast(3, 4) ; heal
	tab() ; target enemy
}

drowsy(byref numberOftimes) {
	Loop, %numberOfTimes% {
		cast(6, 6) ; drowsy
	}
}
