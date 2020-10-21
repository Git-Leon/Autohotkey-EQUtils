#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk
#Include ../../EQUtilsClick.ahk
#Include ../spellbook/SpellGemBar.ahk


class SpellBook {
	__New(byref spellGemBar, xOrigin, yOrigin) {
    ; MsgBox % "New SpellBook" . spellGemBar.toString()
    this.spellGemBar := spellGemBar
    this.xOrigin := xOrigin
    this.yOrigin := yOrigin
	}

  setSpellGemBar(byref spellGemBar) {
    this.spellGemBar := spellGemBar
  }

  memorizeSpell(byref gemNumber, rowNumber, columnNumber) {
    xInitialOffset := 65
    yInitialOffset := 35

    xOffsetPerColumn := 85
    yOffsetPerRow := 65

    xOffset := xInitialOffset + ((columnNumber-1)* xOffsetPerColumn)
    yOffset := yInitialOffset + ((rowNumber-1) * yOffsetPerRow)

    xCoordinateOfSpell := this.xOrigin + xOffset
    yCoordinateOfSpell := this.yOrigin + yOffset

    gemBar := this.spellGemBar
    gem := gemBar.getGem(gemNumber)
    xGemCoordinate := gem.getCoordinateX()
    yGemCoordinate := gem.getCoordinateY()

    this.openBook()
    leftClickRepeat(xCoordinateOfSpell, yCoordinateOfSpell, 8) ; fetch spell from book
    rightClickRepeat(xGemCoordinate, yGemCoordinate, 5) ; forget gem
    leftClickRepeat(xGemCoordinate, yGemCoordinate, 8) ; memorize spell in this gem

    output := "xGemCoordinate = " . xGemCoordinate
    output .= "`nyGemCoordinate = " . yGemCoordinate
    output .= "`nxCoordinateOfSpell = " . xCoordinateOfSpell
    output .= "`nyCoordinateOfSpell = " . yCoordinateOfSpell
    ; MsgBox % output
  }

  openBook() {
    stand()
    sendKeys("/book", 0)
  }

  goToFirstPage() {
      this.openBook()
      leftArrow(26)
  }

  goToLastPage() {
    this.openBook()
    this.goToPage(50)
  }

  goToPage(byref number) {
    this.goToFirstPage()
    if(number&1) { ; if even
      rightArrow(number / 2)
    } else { ; if odd
      rightArrow( (number/2) - 1)
    }
  }
  
  clearGems() {
    clickBox(1, 8, 1, 30, this.xOrigin, this.yOrigin)
  }

  
  toString() {
    output := "SpellBook{"
    output .= "xOrigin = " . this.xOrigin
    output .= ", yOrigin = " . this.yOrigin
    output .= this.spellGemBar.toString()
    return output . "}"
	}

}
