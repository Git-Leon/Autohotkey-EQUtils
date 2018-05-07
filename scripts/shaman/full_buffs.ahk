#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk

^!2::
	SetCapsLockState, off
	Loop {
		buffPerson("Scaleskin")
		buffPet()
		sit(512)
	}


buffPerson(byref name) {
  target(name, 1)
  Loop, 8 {
	castSit(A_Index, 7, 8)
  }
}


buffPet() {
	targetPet()
	buffPerson("")
}
