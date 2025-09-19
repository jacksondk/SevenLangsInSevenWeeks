Matrix := Object clone

// Use mapInPlace to insert 0 everywhere
Matrix dim := method(x, y, 
    self rowCount := x
    self colCount := y
    self rows := list() setSize(x)
    self rows mapInPlace(v, list() setSize(y) mapInPlace(vv, 0))
)

Matrix get := method(x, y,
    self rows at(x) at(y)
)

Matrix set := method(x, y, v,
    self rows at(x) atPut(y, v)
)

Matrix transpose := method(    
    rs := self rowCount
    cs := self colCount

    t := Matrix clone
    t dim(cs, rs)
    for(r, 0, rs-1, 
        for(c, 0, cs-1, 
            v := self get(r,c)            
            t set(c, r, v)
        )            
    )
    t
)

Matrix println := method(
    rs := self rowCount
    cs := self colCount

    for(r, 0, rs-1, 
        for(c, 0, cs-1, 
            v := self get(r,c)            
            write(v, " ")            
        )            
        write("\n")
    )

)


test := Matrix clone
test dim(3,3)
test protos println
test slotNames  println

"Just created" println
test println

test set(1,2,4)
"1,2 set to 4" println
test println

test get(1,2) println
"transpose" println
tr := test transpose

tr println