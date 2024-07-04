{-
Ejercicio Nº 14: Dada una lista ordenada y un átomo escribir una 
función que inserte el átomo en el lugar correspondiente.
-}

insertar :: (Ord a) => [a] -> a -> [a]
insertar [] a = [a]
insertar (x:xs) a
    | a > x = x : insertar xs a
    | otherwise = a : x : xs