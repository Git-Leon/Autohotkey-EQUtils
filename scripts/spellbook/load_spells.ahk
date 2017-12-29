#Include EQUtilsCommandLine

clearSpellGems(byref spellBookOrigin) {

}

firstPage() {
  openBook()
  leftArrow(50)
}

openBook() {
  stand()
  sendKeys("/book", 0)
}
