Fibonacci := Object clone

Fibonacci nth := method(num,
    if(num == 1 or num == 2) then(
        return 1
     ) else(
         return nth(num-2) + nth(num-1)
     )
)

Fibonacci nth(7) println
