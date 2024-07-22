{- Ejercicio N°5: 
Definir una función que cuente los elementos pares tiene una lista de números. -}

-- Método 1: Función Básica
pares :: [Integer] -> Int
pares lista = length [x | x <- lista, even x]

-- Método 2: Función Recursiva
paresRecursiva :: [Integer] -> Int
paresRecursiva [] = 0
paresRecursiva (x:xs)
    | even x = 1 + paresRecursiva xs
    | otherwise = paresRecursiva xs

-- Método 3: Forma Funcional
paresFuncional :: [Integer] -> Int
paresFuncional lista = length (filter even lista)

-- Método 4: Función Lambda
paresLambda :: [Integer] -> Int
paresLambda lista = length (filter (\x -> even x) lista)