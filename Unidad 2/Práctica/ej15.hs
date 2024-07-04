{-
Ejercicio Nº 15: Defina una función que, aplicada a una lista de listas, 
permita obtener una lista de un solo nivel.
-- Lista de listas en lista
-}

ll :: [[a]] -> [a]
ll [] = []
ll (x:xs) = x ++ ll xs