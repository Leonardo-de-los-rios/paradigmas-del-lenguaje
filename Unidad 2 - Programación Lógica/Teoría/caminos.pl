% Ejercicio de los caminos: tengo varias ciudades que están unidas por rutas en un solo sentido.
% Debemos construir un programa que permita dada una ciudad origen y una ciudad destino; entregue 
% el camino o los caminos a seguir siendo un camino una lista con las rutas que debo recorrer.

ruta(1,a,b).
ruta(2,a,c).
ruta(3,b,d).
ruta(4,c,d).
ruta(8,b,c).

camino(D,D,[]).
camino(O,D,R):- ruta(N,O,D1), camino(D1,D,R1), R = [N|R1].