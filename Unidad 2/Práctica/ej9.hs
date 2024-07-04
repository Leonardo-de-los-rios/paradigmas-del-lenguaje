{- Ejercicio Nº 9: Implementar una función recursiva que pase un 
número decimal a binario -}

-- Método 1
binario_1 :: Integer -> [Char]
binario_1 n = if n == 0 || n == 1 
            then show(n)
            else binario_1(div n 2) ++ show(mod n 2)

-- Método 2
binario_2 :: Integer -> [Char]
binario_2 n
    | n >= 2 = binario_2(div n 2) ++ show(mod n 2)
    | otherwise = show(n)

-- Método 3
binario_3 :: Integer -> [Char]
binario_3 0 = "0"
binario_3 1 = "1"
binario_3 n = binario_3(div n 2) ++ show(mod n 2)