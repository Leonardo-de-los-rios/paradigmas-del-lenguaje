% Método 1: Regla Básica 
modulo(X, Y, Z):- Z is X mod Y.

% Método 2: Regla Recursiva
moduloRecursiva(X, Y, Z):- X < Y, Z is X, !.
moduloRecursiva(X, Y, Z):- X1 is X - Y, moduloRecursiva(X1, Y, Z).