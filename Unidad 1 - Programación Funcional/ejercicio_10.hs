{- Ejercicio Nº 10:
Implementar una función recursiva que permita obtener la unión de dos listas dadas; los elementos repetidos solo deben aparecer una vez. -}

-- Método 1: Función Básica
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use infix" #-}
union :: (Eq a) => [a] -> [a] -> [a]
union xs ys = xs ++ [y | y <- ys, notElem y xs]

-- Método 2: Función Recursiva
unionRecursiva :: (Eq a) => [a] -> [a] -> [a]
unionRecursiva [] lista = lista
unionRecursiva (x:xs) lista =
    if notElem x lista
    then x : unionRecursiva xs lista
    else unionRecursiva xs lista

-- Método 3: Función Recursiva con Guardas
unionRecursivaGuardas :: (Eq a) => [a] -> [a] -> [a]
unionRecursivaGuardas [] lista = lista
unionRecursivaGuardas (x:xs) lista
    | elem x xs = unionRecursivaGuardas xs lista
    | elem x lista = unionRecursivaGuardas xs lista
    | otherwise = x : unionRecursivaGuardas xs lista

-- Método 4: Función Lambda
unionRecursivaLambda :: (Eq a) => [a] -> [a] -> [a]
unionRecursivaLambda xs ys = xs ++ filter(\y -> notElem y xs) ys