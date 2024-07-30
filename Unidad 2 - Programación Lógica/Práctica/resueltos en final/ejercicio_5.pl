% Método 1: Regla Básica
potencia(X, Y, Z):- Z is X ** Y.

% Método 2: Regla Recursiva
potenciaRecursiva(X, 0, 1):- X \= 0, !.
potenciaRecursiva(X, Y, Z):- X > 0, Y1 is Y - 1, potenciaRecursiva(X, Y1, Z1), Z is X * Z1.