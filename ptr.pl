si(P,T,R):-
	I is (P*R*T)/100,
	AfterDiscount is (2*I)/100,
	write(I),nl,
	write(AfterDiscount).