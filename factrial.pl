facto(N,F):-
write('the factorial for '),
write(N),
write('is'),
fact(N,F1),
F is F1,
write(F).