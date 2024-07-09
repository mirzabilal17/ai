likes(john,susie).
likes(X,susie).
likes(john,Y).
likes(john,Y),
likes(Y,john).
likes(john,susie);likes(john,mary).
not(likes(john,pizza)).


2.
idiv(10,8).
idiv(D,N):-
S is D mod N,
write(S).



3.
(eveodd(3)->write('e');write('o')),nl.
eveodd(n):-
(n mod 2 =:=0 -> true;
n mod 2 =:= 1-> false).

4.
(grandparent(sarah,adam)->write('s');write('n')),nl.
parent(john, sarah).
parent(john, adam).
parent(eve, sarah).
parent(eve, adam).
parent(emily,john).
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.


grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).


8.
(pn(5)->write('p');write('n')),nl.
pn(N):-
(N>=0->true;
N<0->false).




10.(range(2, 1, 4) ->
        write('yes');
        write('no')),
    nl.
range(Num, Low, Upper) :-
    Num >= Low,
    Num =< Upper



11.
Year = 2024,
    (is_leap_year(Year) ->
        write(Year), write(' is a leap year.');
        write(Year), write(' is not a leap year.')),
    nl.
is_leap_year(Year) :-
    (Year mod 400 =:= 0 ->true;
    Year mod 100 =:= 0 ->false;
    Year mod 4 =:= 0 -> true;
    false).



12.
facto(N, F) :-
    write('The factorial for '),
    write(N),
    write(' is '),
    fact(N, F1),
    F is F1,
    write(F).

fact(0, 1).
fact(1, 1).

fact(N, F) :-
    N > 1, 
    N1 is N - 1, 
    fact(N1, F1), 
    F is N * F1.




13.
 Num = 17,
    (is_prime(Num) -> 
        write(Num), write(' is a prime number.');
        write(Num), write(' is not a prime number.')),
    nl.
is_prime(2). 
is_prime(N) :- 
    N > 2, 
    \+ has_factor(N, 2).
has_factor(N, F) :- 
    N mod F =:= 0.
has_factor(N, F) :- 
    F * F < N, 
    F2 is F + 1, 
    has_factor(N, F2).

14.
rev([1,2,3],U),write(U).
rev([],[]).
rev([Head|Tail],R):-
rev(Tail,T),
append(T,[Head],R).


15.
(pal([1,2,1])->write('s');write('n')),nl.
pal(L):-
reverse(L,L).
