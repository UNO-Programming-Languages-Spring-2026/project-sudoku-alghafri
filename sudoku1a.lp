row(1..4).
col(1..4).
num(1..4).

% 1. Each cell must have exactly one number
1 { sudoku(X,Y,N) : num(N) } 1 :- row(X), col(Y).

% 2. Integrity: No two numbers the same in a row
:- sudoku(X,Y1,N), sudoku(X,Y2,N), Y1 != Y2.

% 3. Integrity: No two numbers the same in a column
:- sudoku(X1,Y,N), sudoku(X2,Y,N), X1 != X2.

% 4. Honor initial facts
sudoku(X,Y,N) :- initial(X,Y,N).

#show sudoku/3.
