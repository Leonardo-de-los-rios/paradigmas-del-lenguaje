{- Ejercicio Nº 7: 
Definir una función que transforme una lista de números en otra lista que contenga el cubo de cada elemento. -}

-- Método 1: Función Básica
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}
cubo :: (Integral a) => [a] -> [a]
cubo lista = [x^3 | x <- lista]

-- Método 2: Función Recursiva
cuboRecursiva :: (Integral a) => [a] -> [a]
cuboRecursiva [] = []
cuboRecursiva (x:xs) = x^3 : cuboRecursiva xs

-- Método 3: Forma Funcional
cuboFuncional :: (Integral a) => [a] -> [a]
cuboFuncional lista = map (^3) lista

-- Método 4: Función Lambda
cuboLambda :: (Integral a) => [a] -> [a]
cuboLambda lista = map (\x -> x^3) lista