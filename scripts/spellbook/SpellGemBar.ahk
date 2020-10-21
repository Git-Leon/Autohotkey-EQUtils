myInstance := new Person("Leon", "Hunter", 24)
MsgBox % myInstance.toString()


class SpellGemBar {
	__New(xCoordinate, yCoordinate) {
        this.xCoordinate := %xCoordinate%
        this.yCoordinate := %yCoordinate%
        this.spellGems = []
        Loop, 8 {
            spellNumber := 0
            spellNumber++
            spellGemY = yCoordinate + 10 + (30 * spellNumber)
            spellGemX = xCoordinate + 15
            spellGem := new SpellGem(spellGemX, spellGemY)
            spellGems.Push(spellGem)
        }
	}

    getGem(byref spellNumber) {
        
    }

}
