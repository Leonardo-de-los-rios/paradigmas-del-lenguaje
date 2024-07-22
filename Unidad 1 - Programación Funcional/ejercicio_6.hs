{- Ejercicio Nº 6: 
Definir una función que reciba una lista de listas y entregue la cantidad de elementos de la lista de mayor longitud. -}

-- Método 1: Función Básica
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
cantElementos :: [[a]] -> Int
cantElementos lista = maximum ([length x | x <- lista])

-- Método 2: Función Recursiva
cantElementosRecursiva :: [[a]] -> Int
cantElementosRecursiva [] = 0
cantElementosRecursiva (x:xs) = max (length x) (cantElementosRecursiva xs)

-- Método 3: Forma Funcional
cantElementosFuncional :: [[a]] -> Int
cantElementosFuncional lista = maximum (map length lista)

-- Método 4: Función Lamda
cantElementosLambda :: [[a]] -> Int
cantElementosLambda lista = maximum (map (\x -> length x) lista)