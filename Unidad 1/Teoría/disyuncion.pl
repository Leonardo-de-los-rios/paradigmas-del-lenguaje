% 1. Definir un predicado que calcule la longitud de una lista.

suma([],0).
suma([X|Y],R):- (X>=0, suma(Y,R1), R is X + R1, !); (suma(Y,R)).