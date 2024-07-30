:- dynamic hombre/1, mujer/1, padre/2, madre/2, progenitor/2.

hombre(juan).
hombre(carlos).
mujer(maria).
padre(juan, carlos).
padre(juan, maria).

progenitor(X, Y) :- padre(X, Y).
progenitor(X, Y) :- madre(X, Y).
