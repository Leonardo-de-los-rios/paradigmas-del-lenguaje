hombre(homero).
hombre(pericles).
hombre(tio_cosas).
hombre(lucas).
hombre(abuelo).

mujer(morticia).
mujer(merlina).
mujer(abuela).

padre(homero, pericles).
padre(abuelo, homero).
padre(abuelo, lucas).
padre(homero, merlina).

madre(morticia, pericles).

% X: padre/madre, Y: hijo.
hijo(X,Y):- hombre(X), padre(Y,X).
hijo(X,Y):- mujer(X), madre(Y,X).