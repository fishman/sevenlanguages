male(hans).
male(peter).
male(johann).
male(john).
male(smith).
female(julia).
female(hanna).
female(susi).
female(jana).
female(sarah).
parent_of(hans, peter).
parent_of(peter, johann).
parent_of(johann, john).
parent_of(john, smith).
parent_of(hanna, julia).
parent_of(susi, hanna).
parent_of(jana, susi).
parent_of(sarah, jana).

%ancestor(Dude, Ancestor) :- parent_of(Dude, Ancestor).
ancestor(Dude, Ancestor) :-
    parent_of(Dude, SomeAncestor),
    parent_of(SomeAncestor, Ancestor).

father(Son, Father) :-
    male(Father),
    parent_of(Son, Father).

mother(Son, Mother) :-
    female(Mother),
    parent_of(Son, Mother).

son()
