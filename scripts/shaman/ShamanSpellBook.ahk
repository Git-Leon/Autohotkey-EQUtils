#Include ../../EQUtilsCommandLine.ahk
#Include ../spellbook/SpellBook.ahk


class ShamanSpellBook {
	__New(byref spellGemBar, spellBook) {
		this.spellGems := new SpellGemBar(115, 665)
		this.spellBook := new SpellBook(spellGems, 320,530) ; coordinate of top left corner of book
		; myInstance.goToLastPage()
		; myInstance.goToFirstPage()
		this.myInstance.memorizeSpell(1, 1, 1)
	}

	gate() {
		this.spellBook.goToPage(2)
		this.spellBook.memorizeSpell(1, 1, 1)
	}

	sow() {
		this.spellBook.goToPage(2)
		this.spellBook.memorizeSpell(2, 4, 1)
	}

	healing() {
		this.spellBook.goToPage(1)
		this.spellBook.memorizeSpell(3, 1, 2)
	}

	root() {
		this.spellBook.goToPage(2)
		this.spellBook.memorizeSpell(4, 3, 3)
	}

	slow() {
		this.spellBook.goToPage(2)
		this.spellBook.memorizeSpell(5, 3, 4)
	}

	poison() {
		this.spellBook.goToPage(2)
		this.spellBook.memorizeSpell(6, 2, 2)
	}

	nuke() {
		this.spellBook.goToPage(2)
		this.spellBook.memorizeSpell(8, 2, 1)
	}

	toString() {
		output := "SpellGems = " . this.spellGems.toString()
		output .= "SpellBook = " . this.spellBook.toString()
		return output
	}
}