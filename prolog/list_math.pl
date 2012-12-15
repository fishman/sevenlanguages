count(0, []).
count(Count, [Head|Tail]) :- count(TailCount, Tail), Count is TailCount + 1.

sum(0, []).
sum(Sum, [Head|Tail]) :- sum(SumCount, Tail), Sum is SumCount + Head.

average(Average, List) :-sum(Sum, List), count(Count, List), Average is Sum/Count.


concatenate([], List, List).
concatenate([Head|[]], List, [Head|List]).
concatenate([Head|Tail1], List, [Head|Tail2]) :- concatenate(Tail1, List, Tail2).

swap([], []).
%swap([Head|[]], [Head]).
% swap([Head|[Tail|[]]], [Tail,Head]).
% swap([Head|[Tail|[Tail2|[]]]], [Tail2,Tail,Head]).
%swap([Head|[Tail1|[]]], [Tail1,Head]).
swap([Head|Tail], NewTail|[Head]) :-
    swap(Tail, NewTail).


smallest([Num], Num).
smallest([Head|Tail], Num) :-
    smallest(Tail, Num),
    Tail is [Head3|List],
    (Head3 < Num -> Num is Head3).
