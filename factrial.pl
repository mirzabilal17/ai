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