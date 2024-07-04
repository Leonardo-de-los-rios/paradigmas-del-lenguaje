%elim(2, [3,2,1], [3,1]). ---> true
%elim(2, [2,3,1], X). ---> X=[3,1]

elim(X,[X|L1],L1).
elim(X,[Y|L1],L2):- elim(X,L1,L3), L2=[Y|L3].
% elim(X,[Y|L1],L2):- elim(X,L1,L3), append([Y],L3,L2).
