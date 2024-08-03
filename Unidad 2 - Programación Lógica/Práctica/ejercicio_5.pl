% potencia (3,0,X). ---> X=1
% potencia (5,2,25). ---> true

potencia(N,0,1):- N \= 0, !.
potencia(N,E,R):- E > 0, E1 is E - 1, potencia(N,E1,R1), R is R1 * N.
