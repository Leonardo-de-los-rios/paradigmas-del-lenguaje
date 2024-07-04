{- Ejercicio Nº 6: Definir una función que reciba una lista de listas 
y entregue la cantidad de elementos de la lista de mayor longitud. -}

-- Método 1
cantElementos_1 :: [[a]] -> Int
cantElementos_1 ll = maximum([length(x)| x <- ll])

-- Método 2
cantElementos_2 :: [[a]] -> Int
cantElementos_2 ll = maximum (map length ll)
-- Se puede hacer únicamente cuando la lista intencional no tiene condiciones

-- Método 3 REVISAR
cantElementos_3 :: [[a]] -> Int -> Int
cantElementos_3 [[]] _ = 0
cantElementos_3 (x:xs) m
    | length x > m = cantElementos_3 xs (length x)
    | otherwise = cantElementos_3 xs m