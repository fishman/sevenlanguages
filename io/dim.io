Twodim := Object clone
Twodim x := 0
Twodim y := list()
Twodim dim := method(p_x, p_y,
    x = p_x
    p_y repeat(
        newList := List clone
        x repeat(
            newList append(0)
        )
        y append(newList)
    )
)

Twodim set := method(p_x, p_y, replace,
    tempList := y at(p_y)
    tempList atPut(p_x, replace)
    y atPut(p_y, tempList)
)

Twodim get := method(p_x, p_y
    y at(p_y) at(p_x)
)

Twodim write_to_file := method(
    f := File with("foo.txt")
    f remove
    f openForUpdating
    y foreach(i, v, 
        v foreach(i, v,
            f write(doString(v))
        )
    )
    f close
)

Twodim sum := method(
    res := 0
    y foreach(i, v, 
        v foreach(i, v,
            res = res + v
        )
    )

    return res
)


testDim := Twodim clone
testDim dim(10, 10)
testDim set(4, 0, 20)
testDim sum println
testDim set(4, 0, "hello")
testDim y println
testDim write_to_file
