% 1. Definir un predicado que calcule la longitud de una lista.

longitud([], 0).
longitud([_|Y], R):- longitud(Y, R1), R is R1 + 1.