myInstance := new Person("Leon", "Hunter", 24)
MsgBox % myInstance.toString()


class SpellGem {
    __New(xCoordinate, yCoordinate) {
        this.xCoordinate := %xCoordinate%
        this.yCoordinate := %yCoordinate%
    }

    getCoordinateX() {
        return this.xCoordinate
    }

    getCoordinateY() {
        return this.yCoordinate
    }
}
