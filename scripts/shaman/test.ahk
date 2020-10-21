#SingleInstance Force
#Include ./ShamanSpellBook.ahk


^F2:: ; TESTS
  spellGems := new SpellGemBar(115, 665)
  MsgBox % spellGems.toString()
  spellBook := new SpellBook(spellGems, 320,530) ; coordinate of top left corner of book
  MsgBox % spellBook.toString()
  shamanSpellBook := new ShamanSpellBook(spellGems, spellBook)
  MsgBox % shamanSpellBook.toString()
  shamanSpellBook.gate()
  shamanSpellBook.sow()
  shamanSpellBook.healing()
  shamanSpellBook.root()
  shamanSpellBook.slow()
  shamanSpellBook.poison()
  ; myInstance.goToLastPage()
  ; myInstance.goToFirstPage()
  ; myInstance.memorizeSpell(1, 1, 1)
  