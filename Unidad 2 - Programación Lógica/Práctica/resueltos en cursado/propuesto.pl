animales(mamifero([vaca,mono])).
animales(reptil([serpiente,coco])).
animales(pez([salmon])).

es(A):- animales(F), arg(_,F,V), buscar_animal(A,V), functor(F,N,_), write(N), !.
es(A):- write('ERROR: No existe el animal '), write(A).
buscar_animal(X,[X|_]):- !.
buscar_animal(X,[_|Y]):- buscar_animal(X,Y).
