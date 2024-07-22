{- Ejercicio Nº 14:
Dada una lista ordenada y un átomo escribir una función que inserte el átomo en el lugar correspondiente. 
-}

-- Método 1: Función Básica
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Avoid lambda using `infix`" #-}
insertar :: (Ord a) => [a] -> a -> [a]
insertar lista elemento = [x | x <- lista, x < elemento] ++ [elemento] ++ [x | x <- lista, x >= elemento]

-- Método 2: Función Recursiva
insertarRecursiva :: (Ord a) => [a] -> a -> [a]
insertarRecursiva [] elemento = [elemento]
insertarRecursiva (x:xs) elemento =
    if elemento > x
    then x : insertarRecursiva xs elemento
    else elemento : x : xs

-- Método 3: Función Recursiva con Guardas
insertarRecursivaGuardas :: (Ord a) => [a] -> a -> [a]
insertarRecursivaGuardas [] elemento = [elemento]
insertarRecursivaGuardas (x:xs) elemento
    | elemento > x = x : insertarRecursivaGuardas xs elemento
    | otherwise = elemento : x : xs

-- Método 4: Forma Funcional
insertarFuncional :: (Ord a) => [a] -> a -> [a]
insertarFuncional lista elemento = filter (<elemento) lista ++ [elemento] ++ filter (>=elemento) lista

-- Método 5: Función Lambda
insertarLambda :: (Ord a) => [a] -> a -> [a]
insertarLambda lista elemento = filter (\x -> x < elemento) lista ++ [elemento] ++ filter (\x -> x >= elemento) lista

-- Método 6: Función Avanzada
insertarAvanzada :: (Ord a) => [a] -> a -> [a]
insertarAvanzada lista elemento = takeWhile (<elemento) lista ++ [elemento] ++ dropWhile (<elemento) lista
