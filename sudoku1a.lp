row(1..4).
col(1..4).
num(1..4).

% Each cell has exactly one number
1 { sudoku(X,Y,N) : num(N) } 1 :- row(X), col(Y).

% Respect initial values
:- initial(X,Y,N), not sudoku(X,Y,N).

% No duplicate number in a row
:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.

% No duplicate number in a column
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.
