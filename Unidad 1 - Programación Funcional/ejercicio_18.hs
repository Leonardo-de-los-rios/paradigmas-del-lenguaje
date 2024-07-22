{- Ejercicio Nº18:
Escriba un programa que recibiendo como argumento una lista de listas donde cada sublista contiene nombre del docente, dedicación y carrera donde trabaja; entregue como resultado una lista con los nombres de los docentes que cobrarán un plus considerando que los cobrarán aquellos docentes que tenga solamente un cargo con dedicación simple.

Ejemplo:
plus [[Ana, Exclusivo, LSI], [Mary, Semi, LCC], [Jose, Simple, LSI], [Mary, Simple, LSI], [Raul, Exclusivo, LCC], [Pepe, Simple, LSI] ….][Jose, Pepe, ….] -}

-- Método 1: Función Básica
plus :: [[String]] -> [String]
plus lista = [head x | x <- lista, head (tail x) == "simple" && length (filter (\y -> head x == head y) lista) == 1]