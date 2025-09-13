Number originalDiv := Number getSlot("/")
OperatorTable setSlot("/", method(b,
    if(b == 0, 0, self performWithArgList("originalDiv", list(b)))))
Number setSlot("/", OperatorTable getSlot("/"))

"4 / 2" println
4/2 println

"4 / 0" println
4/0 println