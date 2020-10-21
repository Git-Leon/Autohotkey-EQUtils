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
        output := "`n`nxCoordinate = " . this.getCoordinateX()
        output .= "`nyCoordinate = " . this.getCoordinateY()
        return output
	}
}
