#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk

hum(byref songNumber) {
	sing(songNumber, 3.2)
}

harmony(byref song1, song2, song3, song4) {
	hum(song1)
	hum(song2)
	hum(song3)
	hum(song4)
}

melody(byref song1, song2, song3, song4) {
	Loop {
		harmony(song1, song2, song3, song4)
	}
}
