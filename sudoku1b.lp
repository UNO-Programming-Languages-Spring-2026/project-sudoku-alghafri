subgrid(X,Y,1) :- row(X), col(Y), X <= 2, Y <= 2.
subgrid(X,Y,2) :- row(X), col(Y), X <= 2, Y >= 3.
subgrid(X,Y,3) :- row(X), col(Y), X >= 3, Y <= 2.
subgrid(X,Y,4) :- row(X), col(Y), X >= 3, Y >= 3.
