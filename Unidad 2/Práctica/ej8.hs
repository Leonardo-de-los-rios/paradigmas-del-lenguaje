{- Ejercicio Nº 8: Definir una función recursiva que permita eliminar los elementos repetidos 
de una lista de átomos. -}

eliminarRep_1 :: Eq a => [a] -> [a]
eliminarRep_1 [] = []
eliminarRep_1 (x:xs)
    | elem x xs = eliminarRep_1 xs
    | otherwise = x : eliminarRep_1 xs