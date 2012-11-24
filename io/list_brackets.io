squareBrackets := method(
    r := List clone
    call message arguments foreach(arg,
        r append(arg)
    )
    r
)

s := File with("list_brackets.txt") openForReading contents
phoneNumbers := doString(s)
phoneNumbers println

