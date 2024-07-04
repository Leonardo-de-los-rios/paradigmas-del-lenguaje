{- Ejercicio Nº 12: Calcular el producto de una matriz por un vector. -}

-- Método NO recursivo
{-
producto :: (Integral a) => [[a]] -> [a] -> [a]
producto m v =  if length m == length v -- corregir
                then map (\x -> sum (map (+0) (zipWith (*) x v))) m
                else []
-}

-- Método Recursivo
producto :: (Integral a) => [[a]] -> [a] -> [a]
producto [] _ = []
producto (x:xs) v = if length x == length v
                    then sum(zipWith (*) x v) : producto xs v
                    else []

