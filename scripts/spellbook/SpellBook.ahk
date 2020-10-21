#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk
#Include ../../EQUtilsClick.ahk
#Include ../spellbook/SpellGemBar.ahk

^F3:: ; TESTS
  spellGems := new SpellGemBar(115, 665)
  myInstance := new SpellBook(spellGems, 320,530) ; coordinate of top left corner of book
  ; myInstance.goToLastPage()
  ; myInstance.goToFirstPage()
  myInstance.memorizeSpell(1, 1, 1)
  
  return

^+F3:: ; CTRL + Shift + F3 to restart
  	run AutoHotkey.exe SpellBookObject.ahk ; create new



class SpellBook {
	__New(byref spellGemBar, xOrigin, yOrigin) {
    this.spellGemBar := spellGemBar
    this.xOrigin := xOrigin
    this.yOrigin := yOrigin
	}

  memorizeSpell(byref gemNumber, rowNumber, columnNumber) {
    this.openBook()
    xInitialOffset := 65
    yInitialOffset := 35

    xOffsetPerColumn := 85
    yOffsetPerRow := 65

    xOffset := xInitialOffset + ((columnNumber-1)* xOffsetPerColumn)
    yOffset := yInitialOffset + ((rowNumber-1) * yOffsetPerRow)

    xCoordinateOfSpell := this.xOrigin + xOffset
    yCoordinateOfSpell := this.yOrigin + yOffset

    gem := this.spellGemBar.getGem(gemNumber)
    xGemCoordinate := gem.getCoordinateX()
    yGemCoordinate := gem.getCoordinateY()

    leftClick(xCoordinateOfSpell, yCoordinateOfSpell) ; fetch spell from book
    leftClick(xCoordinateOfSpell, yCoordinateOfSpell) ; fetch spell from book

    rightClick(xGemCoordinate, yGemCoordinate) ; forget gem
    rightClick(xGemCoordinate, yGemCoordinate) ; forget gem

    leftClick(xGemCoordinate, yGemCoordinate) ; memorize spell in this gem
    leftClick(xGemCoordinate, yGemCoordinate) ; memorize spell in this gem
    

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
    MsgBox % this.xOrigin
    val2 := this.yOrigin
    clickBox(1, 8, 1, 30, this.xOrigin, this.yOrigin)
  }

  
  toString() {
    output := "xOrigin = " . this.xOrigin
    output .= "`nyOrigin = " . this.yOrigin
    output .= this.spellGemBar.toString()
    return output
	}

}
