padre(pedro, valentina).
madre(sofia, lautaro).
hombre(pedro).
hombre(lautaro).
mujer(valentina).
mujer(sofia).

es_madre(X):- madre(X, _), mujer(X).
es_padre(X):- padre(X, _), hombre(X).
es_hijo(X):- padre(_, X), hombre(X).
es_hijo(X):- madre(_, X), hombre(X).
hija(X, Y):- padre(Y, X), mujer(X).
hija(X, Y):- madre(Y, X), mujer(X).
