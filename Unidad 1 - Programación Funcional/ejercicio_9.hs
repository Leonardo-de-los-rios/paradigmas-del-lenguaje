{- Ejercicio Nº 9:
Implementar una función recursiva que pase un número decimal a binario. -}

-- Método 2: Función Recursiva
binarioRecursiva :: Integer -> [Char]
binarioRecursiva 0 = "0"
binarioRecursiva 1 = "1"
binarioRecursiva numero = binarioRecursiva(div numero 2) ++ show (mod numero 2)