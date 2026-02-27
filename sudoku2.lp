row(1..9).
col(1..9).
num(1..9).

1 { sudoku(X,Y,N) : num(N) } 1 :- row(X), col(Y).

sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y,N1), sudoku(X,Y,N2), N1 != N2.

:- row(X), num(N), not 1 { sudoku(X,Y,N) : col(Y) } 1.

:- col(Y), num(N), not 1 { sudoku(X,Y,N) : row(X) } 1.

subgrid(X,Y,G) :-
    row(X), col(Y),
    G = ((X-1)/3)*3 + ((Y-1)/3) + 1.

:- num(N), G = 1..9,
   not 1 { sudoku(X,Y,N) : subgrid(X,Y,G) } 1.

#show sudoku/3.
