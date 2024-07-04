{- Ejercicio No 10: Implementar una función recursiva que permita obtener 
la unión de dos listas dadas los elementos repetidos solo deben aparecer una vez. -}

union :: (Eq a) => [a] -> [a] -> [a]
union [] y = y
union (x:xs) y
    | x `elem` xs = union xs y
    | x `elem` y = union xs y
    | otherwise = x : union xs y

{- 
main :: IO ()
main = do
    let lista1 = [1, 2, 3, 4, 5, 4, 3]
    let lista2 = [4, 5, 6, 7, 8]
    let resultado = union lista1 lista2
    putStrLn $ "Unión: " ++ show resultado
-}