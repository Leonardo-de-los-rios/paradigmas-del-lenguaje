{- Ejercicio Nº 11:
Definir una función que permita contar los átomos de una lista de listas. -}

-- Método 1: Función Básica
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
contarAtomos :: [[a]] -> Int
contarAtomos lista = sum [length x | x <- lista]

-- Método 2: Función Recursiva
contarAtomosRecursiva :: [[a]] -> Int
contarAtomosRecursiva [] = 0
contarAtomosRecursiva (x:xs) = length x + contarAtomosRecursiva xs

-- Método 3: Forma Funcional
contarAtomosFuncional :: [[a]] -> Int
contarAtomosFuncional lista = sum (map length lista)

-- Método 4: Función Lambda
contarAtomosLambda :: [[a]] -> Int
contarAtomosLambda lista = sum (map (\x -> length x) lista)

-- Método 5: Función Avanzada
contarAtomosAvanzada :: [[a]] -> Int
contarAtomosAvanzada lista = length (concat lista)