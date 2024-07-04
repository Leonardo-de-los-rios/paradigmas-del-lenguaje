% 3. Definir un predicado que ante la consulta: cons(1, [2,3], Z) -> Z=[1,2,3]

cons(X,Y,R):- R = [X|Y].