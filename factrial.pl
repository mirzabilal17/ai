facto(N,F):-
write('the factorial for '),
write(N),
write('is'),
fact(N,F1),
F is F1,
write(F).
fact(0,1).

fact(1,1).

fact(N, F):-

N>1, 

N1 is N-1, 

fact(N1,F1), 

F is N*F1.








move(1,X,Y,_) :-
   write('Move top disk from '), write(X), write(' to '), write(Y), nl.
move(N,X,Y,Z) :-
   N>1,
   M is N-1,
   move(M,X,Z,Y),
   move(1,X,Y,_),
   move(M,Z,Y,X).

tower_of_hanoi(N) :-
   move(N, 'A', 'C', 'B').