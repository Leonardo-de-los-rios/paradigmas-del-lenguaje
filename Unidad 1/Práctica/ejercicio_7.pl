%a)union([1,2], [3,4,5], [1,2,3,4,5]).
%b) union (A, [3,4,5], [1,2,3,4,5]).
%c) union ([1,2], [3,4,5], A).
%d) union (A, B, [1,2,3,4,5]).

union([],L2,L2).
union([X|L1],L2,[X|L3]):- union(L1,L2,L3).

% La idea es ingresar dos listas y unirlas elminando las componentes de
% la L1 y L3, para llegar al caso base que compara las listas y en caso
% de ser correcto, retorna True y devuelve la lista combinada (L3).
