% sudoku1b.lp (fixed)
row(1..4).
col(1..4).
num(1..4).

1 { sudoku(X,Y,N) : num(N) } 1 :- row(X), col(Y).

:- initial(X,Y,N), not sudoku(X,Y,N).

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

% Correct subgrid mapping using integer division
subgrid(X,Y,G) :- row(X), col(Y), G = 1 + ((X-1)//2)*2 + ((Y-1)//2).

#show subgrid/3.
