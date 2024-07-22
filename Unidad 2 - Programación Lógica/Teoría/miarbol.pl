miarbol1(tree(carla,
             tree(miguel,
                  tree(carlos, nil, nil),
                  tree(maria, nil, nil)),
             tree(miriam,
                  tree(patri, nil, nil),
                  tree(jorge, nil, nil)))).
miarbol2(tree(carla,nil,nil)).


% Mostrar todos los nodos del Árbol
mostrar_nodos:- miarbol2(X), recorrer_nodos(X).
recorrer_nodos(nil).
recorrer_nodos(tree(X,Y,Z)) :- writeln(X), recorrer_nodos(Y), recorrer_nodos(Z), !.

% Mostrar los nodos hoja.
mostrar_hojas:- miarbol2(X), recorrer_hojas(X).
recorrer_hojas(tree(X,nil,nil)):- writeln(X), !.
recorrer_hojas(tree(_,Y,Z)):- recorrer_hojas(Y), recorrer_hojas(Z), !.

% Mostrar los nodos que no son hojas.
mostrar_no_hojas:- miarbol2(X), recorrer_no_hojas(X).
recorrer_no_hojas(tree(_,nil,nil)):- !.
recorrer_no_hojas(tree(X,Y,Z)):- writeln(X), recorrer_no_hojas(Y), recorrer_no_hojas(Z), !.

% Calcular la cantidad de nodos.
mostrar_cantidad(C):- miarbol1(X), cantidad(X,C).
% Forma 1: Si o Si tiene que tener 1 componente el Árbol
cantidad(tree(_,nil,nil),1):- !.
cantidad(tree(_,Y,Z),C):- cantidad(Y,C1), cantidad(Z,C2), C is 1+C1+C2, !.
% Forma 2: Puede tener un Árbol vacío.
cantidad(nil,0):- !.
cantidad(tree(_,Y,Z),C):- cantidad(Y,C1), cantidad(Z,C2), C is 1+C1+C2, !.

% Mostrar los nodos internos (no son raíz ni hoja).
mostrar_internos:- miarbol2(X), get_raiz(X,R),recorrer_internos(X,R).
get_raiz(X,V):- arg(1,X,V).
recorrer_internos(tree(_,nil,nil),_):- !.
recorrer_internos(tree(X,_,_),R):- X\=R, writeln(X).
recorrer_internos(tree(R,X,Y),R):- recorrer_internos(X,R), recorrer_internos(Y,R), !.
