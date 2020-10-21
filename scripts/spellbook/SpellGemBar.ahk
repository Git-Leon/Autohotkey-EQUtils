#Include ./SpellGem.ahk

class SpellGemBar {
	__New(xCoordinate, yCoordinate) {
        this.xCoordinate := xCoordinate
        this.yCoordinate := yCoordinate
        this.spellGems := []
        spellNumber := 0
        Loop, 8 {            
            spellNumber++
            spellGemY = yCoordinate + 10 + (30 * spellNumber)
            spellGemX = xCoordinate + 15
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
        MsgBox % output
        return output
	}
}
