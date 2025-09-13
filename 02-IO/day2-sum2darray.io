List setSlot("sum", method(l, 
    s := 0
    foreach(i, v, s := v + s)
))
List setSlot("sum2d", method(ll,
    s := 0
    foreach(i,v, s := v sum + s) ))

List setSlot("myAverage", method(
    if (self detect(i,v, v type != Number type),
        Exception raise("IOException")
    ,
        s := self sum
        s / (self size)
    )
    
))    

matrix := list(list(1,2,3), list(4,5,6), list(7,8,9))

matrix println

matrix at(0) sum println

matrix sum2d println

matrix at(2) myAverage println

try (
    list(1,3,4,"a") myAverage println
) catch (
    "Got an error" println
)
