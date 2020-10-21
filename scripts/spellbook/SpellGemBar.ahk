#Include ./SpellGem.ahk

class SpellGemBar {
	__New(xCoordinate, yCoordinate) {
        this.xCoordinate := %xCoordinate%
        this.yCoordinate := %yCoordinate%
        this.spellGems := []
        Loop, 8 {
            spellNumber := 0
            spellNumber++
            spellGemY = yCoordinate + 10 + (30 * spellNumber)
            spellGemX = xCoordinate + 15
            spellGem := new SpellGem(spellGemX, spellGemY)
            this.spellGems.Push(spellGem)
        }
	}

    getGem(byref spellNumber) {
        return this.spellGems[%spellNumber%]
    }

    
    toString() {
        output := ""
        for spell, spellNumber in this.spellGems
            output .= spell.toString()
        return output
	}
}
