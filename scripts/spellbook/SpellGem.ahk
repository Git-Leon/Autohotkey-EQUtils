class SpellGem {
    __New(xCoordinate, yCoordinate) {
        this.xCoordinate := xCoordinate
        this.yCoordinate := yCoordinate
    }

    getCoordinateX() {
        return this.xCoordinate
    }

    getCoordinateY() {
        return this.yCoordinate
    }

    toString() {
        output := "`nSpellGem{"
        output .= "xCoordinate = " . this.getCoordinateX()
        output .= ", yCoordinate = " . this.getCoordinateY() . "}"
        return output
	}
}
