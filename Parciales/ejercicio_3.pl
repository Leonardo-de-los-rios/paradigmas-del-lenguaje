% M�todo 1:
contar(_,[],0):- !.
contar(E,[X|Y],C):- E\=X, contar(E,Y,C), !.
contar(E,[E|Y],C):- contar(E,Y,C1), C is C1+1.
%M�todo 2:
%contar(_,[],0):- !.
%contar(E,[E|_],1):- !.
%contar(E,[X|Y],C):- E\=X, contar(E,Y,C1), C is C1+1.
