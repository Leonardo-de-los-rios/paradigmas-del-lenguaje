padre(pablo, juan).
padre(pablo, andres).
padre(pablo, lucia).

hermano(A,B):- padre(C,A), padre(C,B), A\=B.