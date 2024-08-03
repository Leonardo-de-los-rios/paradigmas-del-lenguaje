% modulo(10,5,R). ---> R=0
% modulo(14,3,R). ---> R=2

modulo(N,D,N):- D \= 0, N < D, !.
modulo(N,D,R):- D \= 0, N >= D, N1 is N - D, modulo(N1,D,R).
