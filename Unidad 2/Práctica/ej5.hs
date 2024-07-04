{- Ejercicio N°5: Definir una función que cuente los elementos pares 
tiene una lista de números. -}

-- Método 1
pares_1 :: (Integral a) => [a] -> Int
pares_1 l = length ([x| x <- l, even x])

-- Método 2
pares_2 :: (Integral a) => [a] -> Int
pares_2 [] = 0
pares_2 (x:xs)
    |odd x = pares_2 xs
    |otherwise = 1 + pares_2 xs