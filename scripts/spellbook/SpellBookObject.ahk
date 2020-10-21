#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk
#Include ../../EQUtilsClick.ahk
#Include ./SpellGemBar.ahk

^F3:: ; TESTS
  spellGems := new SpellGemBar(115, 665)
  myInstance := new SpellBook(spellGems, 285,400) ; coordinate of top left corner of book
  ;myInstance.goToLastPage()
  ;myInstance.memorizeSpell(1, 1, 1)
  MsgBox % myInstance.toString()

  return

^+F3:: ; CTRL + Shift + F3 to restart
  	run AutoHotkey.exe SpellBookObject.ahk ; create new



class SpellBook {
	__New(byref spellGemBar, xOrigin, yOrigin) {
    this.spellGemBar := spellGemBar
    this.xOrigin := xOrigin
    this.yOrigin := yOrigin
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
  
  memorizeSpell(byref gemNumber, rowNumber, columnNumber) {
    gem := spellGemBar.getGem(gemNumber)
    xGemCoordinate := gem.getCoordinateX()
    yGemCoordinate := gem.getCoordinateY()

    xInitialOffset := 60
    yInitialOffset := 30

    xOffsetPerColumn := 85
    yOffsetPerRow := 65

    xOffset := xInitialOffset + (%columnNumber% * xOffsetPerColumn)
    yOffset := yInitialOffset + (%rowNumber% * yOffsetPerRow)

    xCoordinateOfSpell := this.xOrigin + xOffset
    yCoordinateOfSpell := this.yOrigin + yOffset

    this.openBook()
    leftClick(xCoordinateOfSpell, yCoordinateOfSpell)
    leftClick(xGemCoordinate, yGemCoordinate)
  }

  clearGems() {
    MsgBox % this.xOrigin
    val2 := this.yOrigin
    clickBox(1, 8, 1, 30, this.xOrigin, this.yOrigin)
  }

  
  toString() {
    output := "xOrigin = " . this.xOrigin
    output .= "yOrigin = " . this.yOrigin
    output .= this.spellGems.toString()
    return output
	}

}
