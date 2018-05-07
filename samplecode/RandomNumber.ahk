x := random(400, 700)
MsgBox %x%

random(byref min, max) {
  Random, n, %min%, %max%
  return %n%
}
