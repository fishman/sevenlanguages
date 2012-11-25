different(red, green). different(red, blue).
different(green, red). different(green, blue).
different(blue, red). different(blue, green).

coloring(Alabama, Mississipi, Georgia, Tennessee, Florida) :-
    different(Mississipi, Tennessee),
    different(Mississipi, Alabama),
    different(Alabama, Tennessee),
    different(Alabama, Mississipi),
    different(Alabama, Georgia),
    different(Alabama, Florida),
    different(Georgia, Florida),
    different(Georgia, Tennessee).


