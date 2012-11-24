List myAverage := method(
    result := 0
    foreach(i, v,
        if(v type == "Number") then(
            result = result + v
        ) else(
            Exception raise("TypeError" "Wrong type in list");
        )
    )
    return result
)

testList := list(1,2,3,3)
testList myAverage println
