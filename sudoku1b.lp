row(1..4).
col(1..4).
num(1..4).

1 { sudoku(X,Y,N) : num(N) } 1 :- row(X), col(Y).

:- initial(X,Y,N), not sudoku(X,Y,N).

:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

% Subgrid definitions (explicit mapping)
subgrid(1,1,1). subgrid(1,2,1). subgrid(2,1,1). subgrid(2,2,1).
subgrid(1,3,2). subgrid(1,4,2). subgrid(2,3,2). subgrid(2,4,2).
subgrid(3,1,3). subgrid(3,2,3). subgrid(4,1,3). subgrid(4,2,3).
subgrid(3,3,4). subgrid(3,4,4). subgrid(4,3,4). subgrid(4,4,4).
