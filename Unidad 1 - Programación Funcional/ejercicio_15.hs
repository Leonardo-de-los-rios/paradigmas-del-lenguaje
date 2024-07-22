{- Ejercicio Nº 15:
Defina una función que, aplicada a una lista de listas, permita obtener una lista de un solo nivel. -}

-- Método 2: Función Recursiva
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}
llRecursiva :: [[a]] -> [a]
llRecursiva [] = []
llRecursiva (x:xs) = x ++ llRecursiva xs

-- Método 5: Función Avanzada
llLambda :: [[a]] -> [a]
llLambda = concat