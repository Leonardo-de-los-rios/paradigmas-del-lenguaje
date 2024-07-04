% 2. Escribir la suma de los elementos positivos de una lista.

suma([],0).
suma([X|Y],R):- X>=0, suma(Y,R1), R is X + R1, !.
suma([_|Y],R):- suma(Y,R).

% en una sola linea
% suma([X|Y],R):- (X>=0, suma(Y,R1), R is X + R1, !); suma(Y,R).