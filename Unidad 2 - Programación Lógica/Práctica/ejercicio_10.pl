%reves([3,2,1], [1,2,3]). ---> true (Hacer seguimiento)
%reves([3,2,1], X). ---> X=[1,2,3]

reves([],[]).
reves([X|L1],L2):- reves(L1,L3), append(L3,[X],L2).
