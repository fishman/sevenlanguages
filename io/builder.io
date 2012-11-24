Builder := Object clone
Builder indentLevel := 0
Builder forward := method(
    indentLevel repeat(write("  "))
    writeln("<", call message name, ">")
    indentLevel = indentLevel + 1
    call message arguments foreach(
        arg,
        content := doMessage(arg)
        if(content type == "Sequence",
            indentLevel repeat(write("  "))
            writeln(content)
        )
    )
    indentLevel = indentLevel - 1
    indentLevel repeat(write("  "))
    writeln("</", call message name, ">")
)

/* OperatorTable addAssignOperator(":", "atPutAttr") */
/* Map atPutAttr := method( */
/*     self atPut( */
/*         call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\"") */
/*         call evalArgAt(1) */
/*     ) */
/* ) */

/* Sequence : := method( */
/*     call message arguments foreach(arg, */
/*         arg println */
/*     ) */
/* ) */

Builder curlyBrackets := method(
    r := list
    call message arguments foreach(arg,
        r = (arg asString split(":"))
    )
    r
)

Builder ul(
    li(
        p("hello"),
        book({ "hello": "world" })
    ),
    "Hello"
) println

