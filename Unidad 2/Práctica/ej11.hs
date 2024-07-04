-- Definir una función que permita contar los átomos de una lista de listas.

-- Método 1
contarAtomos_1 :: [[a]] -> Int
contarAtomos_1 l = sum ([length x | x <- l])

-- Método 2
contarAtomos_2 :: [[a]] -> Int
contarAtomos_2 l = sum (map length l)

{- 
Map aplica la función length a cada elemento de la lista, esto me construye
una lista de las longitudes de cada lista. Luego suma las longitudes
-}