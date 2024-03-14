likes(john,susie).
likes(X,susie).
likes(john,Y).
likes(john,Y),
likes(Y,john).
likes(john,susie);likes(john,mary).
not(likes(john,pizza)).