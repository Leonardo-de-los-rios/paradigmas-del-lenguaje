persona(ana).
persona(juan).

casado(ana).
casado(juan).

soltero(X):- persona(X), not(casado(X)).