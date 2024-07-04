{- Ejercicio Nº 7: Definir una función que transforme una lista de números 
en otra lista que contenga el cubo de cada elemento. -}

-- Método 1
cubo :: (Integral a) => [a] -> [a]
cubo l = [x^3| x <- l]

-- Método 2
cubo_2 :: (Integral a) => [a] -> [a]
cubo_2 l = map (^3) l

-- Método 3
cubo_3 :: (Integral a) => [a] -> [a]
cubo_3 [] = []
cubo_3 (x:xs) = x^3 : (cubo_3 xs)