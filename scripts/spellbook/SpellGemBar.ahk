#Include ./SpellGem.ahk

class SpellGemBar {
	__New(xCoordinate, yCoordinate) {
        this.xCoordinate := xCoordinate
        this.yCoordinate := yCoordinate
        this.spellGems := []
        spellNumber := 0
        Loop, 8 {            
            spellNumber++
            spellGemY := yCoordinate + 10 + (30 * (spellNumber-1))
            spellGemX := xCoordinate + 20
            spellGem := new SpellGem(spellGemX, spellGemY)
            this.spellGems.Push(spellGem)
        }
	}

    getGem(byref spellNumber) {
        return this.spellGems[spellNumber]
    }

    
    toString() {
        output := ""
        spellNumber := 0
        Loop, 8 {
            spellNumber++
            gem :=  this.getGem(spellNumber)
            gemStr := gem.toString()
            output .= gemStr
        }
        return output
	}
}
