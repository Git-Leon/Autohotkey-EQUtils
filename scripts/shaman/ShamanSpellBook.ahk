#Include ../spellbook/SpellBook.ahk


class ShamanSpellBook {
	__New(byref spellGemBar, spellBook) {
		this.spellGems := spellGemBar
		this.spellBook := spellBook ; coordinate of top left corner of book
		spellBook.setSpellGemBar(spellGemBar)
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
		output := "ShamanSpellBook{"
		output .= this.spellGems.toString()
		output .= this.spellBook.toString()
		return output . "}"
	}
}