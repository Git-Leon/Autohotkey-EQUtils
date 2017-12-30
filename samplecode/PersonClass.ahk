myInstance := new Person("Leon", "Hunter", 24)
MsgBox % myInstance.toString()


class Person {
	__New(fname, lname, age) {
    this.fname := %fname%
    this.lname := %lname%
    this.age := %age%
	}

	toString() {
    line1 = "First name = " . this.fname
    line2 = "Last name  = " . this.lname
    line3 = "Age        = " . this.age

    return line1 . line2 . line3
	}
}
