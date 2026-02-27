row(1..4).
col(1..4).
num(1..4).

1 { sudoku(X,Y,N) : num(N) } 1 :- row(X), col(Y).

sudoku(X,Y,N) :- initial(X,Y,N).

:- sudoku(X,Y,N1), sudoku(X,Y,N2), N1 != N2.
:- row(X), num(N), not 1 { sudoku(X,Y,N) : col(Y) } 1.
:- col(Y), num(N), not 1 { sudoku(X,Y,N) : row(X) } 1.

#show sudoku/3.
