origdiv := Number getSlot("/")
Number / := method(denom,
    if (denom == 0) then(
        return 0
    ) else(
        return self origdiv(3)
    )
)

(2 / 3) println
(2 / 0) println
