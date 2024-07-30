progenitor(joaquin, marcos).
progenitor(joaquin, facundo).
progenitor(florencia, matias).
progenitor(marita, andrea).
hermano(X, Y):- progenitor(Z, X), progenitor(Z, Y), X\=Y.