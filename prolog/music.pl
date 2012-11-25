genre(classical, beethoven).
genre(classical, liszt).
genre(romantic, liszt).
genre(metal, metallica).

instrument(piano, classical).
instrument(violine, classical).
instrument(piano, romantic).
instrument(guitar, metal).
instrument(drum, metal).

artist(X, Y) :- genre(X, Y).
instruments(X, Y) :- genre(Z, X), instrument(Y, Z).
