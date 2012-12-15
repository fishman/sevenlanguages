% teile(Gegenstand, Unterbestandteil, Anzahl) :- unmittelbareTeile(Gegenstand, Bestandteil, Anzahl_0), teile(Bestandteil, Unterbestandteil, Anzahl_1), prod(Anzahl_0, Anzahl_1, Anzahl).
teile(Gegenstand, Bestandteil, Anzahl) :- unmittelbareTeile(Gegenstand, Bestandteil, Anzahl).

unmittelbareTeile(einrad,rad,1).
unmittelbareTeile(einrad,pedal,2).
unmittelbareTeile(rad, speiche, 28).
unmittelbareTeile(speiche, speichennippel, 1).
