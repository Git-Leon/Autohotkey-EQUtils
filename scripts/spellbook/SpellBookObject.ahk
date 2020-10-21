#SingleInstance Force
#Include ../../EQUtilsCommandLine.ahk
#Include ../../EQUtilsClick.ahk

^F3:: ; TESTS
  myInstance := new SpellBook(285,400); coordinate of top left corner of book
  ;myInstance.goToLastPage()
  ;myInstance.clearGems()

  return

^+F3:: ; CTRL + Shift + F3 to restart
  	run AutoHotkey.exe SpellBookObject.ahk ; create new



class SpellBook {
	__New(xOrigin, yOrigin) {
    this.xOrigin := %xOrigin%
    this.yOrigin := %yOrigin%
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
    gem := spellGemBar.getGem(gemNumber);
    xGemCoordinate := gem.getCoordinateX()
    yGemCoordinate := gem.getCoordinateY()

    xInitialOffset := 60
    yInitialOffset := 30

    xOffsetPerColumn := 85
    yOffsetPerRow := 65

    xOffset := xInitialOffset + (columnNumber * xOffsetPerColumn)
    yOffset := yInitialOffset + (columnNumber * yOffsetPerRow)

    xCoordinateOfSpell := this.xOrigin + xOffset
    yCoordinateOfSpell := this.yOrigin + yOffset

    leftClick(xCoordinateOfSpell, yCoordinateOfSpell)
    leftClick(xGemCoordinate, yGemCoordinate)
  }

  clearGems() {
    MsgBox % this.xOrigin
    val2 := this.yOrigin
    clickBox(1, 8, 1, 30, this.xOrigin, this.yOrigin)
  }

}
