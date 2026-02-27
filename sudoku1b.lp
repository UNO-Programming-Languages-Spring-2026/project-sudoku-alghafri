row(1..4).
col(1..4).
val(1..4).

% Standard Sudoku logic from 1a
{ sudoku(X,Y,N) : val(N) } = 1 :- row(X), col(Y).
sudoku(X,Y,N) :- initial(X,Y,N).
:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

% Subgrid mapping for 4x4 (n=2)
% This formula maps (1..4, 1..4) to subgrids 1, 2, 3, and 4
subgrid(X,Y,G) :- 
    row(X), col(Y),
    G = (((X-1)/2)*2 + (Y-1)/2) + 1.

#show sudoku/3.
#show subgrid/3.
