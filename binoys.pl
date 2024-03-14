loc(X1,Y1,X2,Y2):-
X is (X1+X2)/2,
Y is (Y1+Y2)/2,
write('Binoy\'s house is located at'),
write('('),
write(X),
write(','),
write(Y),
write(')').