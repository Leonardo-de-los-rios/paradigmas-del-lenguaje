% modulo(10,5,R). ---> R=0
% modulo(14,3,R). ---> R=2

modulo(0,_,0).
modulo(N,D,R):- N<D, R is N.
modulo(N,D,R):- N>=D, N1 is N-D, modulo(N1,D,R), !.
