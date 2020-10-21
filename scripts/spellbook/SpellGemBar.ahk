#Include ../spellbook/SpellGem.ahk

class SpellGemBar {
	__New(xCoordinate, yCoordinate) {
        this.xCoordinate := xCoordinate
        this.yCoordinate := yCoordinate
        this.spellGems := []
        spellNumber := 0
        Loop % 8 {            
            spellNumber++
            spellGemY := this.yCoordinate + 15 + (30 * (spellNumber-1))
            spellGemX := this.xCoordinate + 40
            spellGem := new SpellGem(spellGemX, spellGemY)
            this.spellGems[spellNumber] := spellGem
            ; this.spellGems.Push(spellGem)
        }
	}

    getGem(byref spellNumber) {    
        return this.spellGems[spellNumber]
    }

    
    toString() {
        output := "SpellGemBar{"
        output .= "xCoordinate = " . this.xCoordinate
        output .= ", yCoordinate = " . this.yCoordinate
        spellNumber := 0
        Loop % 8 {
            spellNumber++
            gem :=  this.getGem(spellNumber)
            gemStr := gem.toString()
            output .= gemStr
        }
        return output . "}"
	}
}
