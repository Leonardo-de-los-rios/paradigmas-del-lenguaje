{-
Ejercicio Nº 13: Hacer el seguimiento de la siguiente función y decir que 
entrega para el ejemplo propuesto: Ej: [[1, 2, 3], [2, 3, 4, 5], [6,7, 8]]
-}

pp :: (Integral a) => [[a]] -> [a]
pp [] = []
pp (x:xs) = [head x] ++ pp xs