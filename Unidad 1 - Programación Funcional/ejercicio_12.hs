{- Ejercicio Nº 12:
Calcular el producto de una matriz por un vector. -}

-- Método 1: Función Básica
producto :: (Integral a) => [[a]] -> [a] -> [a]
producto matriz vector = [sum (zipWith (*) x vector) | x <- matriz]

-- Método 2: Función Recursiva
productoRecursiva :: (Integral a) => [[a]] -> [a] -> [a]
productoRecursiva [] _ = []
productoRecursiva (x:xs) vector = sum (zipWith (*) x vector) : productoRecursiva xs vector
    
-- Método 3: Forma Lambda
productoLambda :: (Integral a) => [[a]] -> [a] -> [a]
productoLambda matriz vector = map (\x -> sum (zipWith (*) x vector)) matriz