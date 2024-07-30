{- Ejercicio N°5: 
Definir una función que cuente los elementos pares tiene una lista de números. -}

-- Método 1: Función Básica
pares :: [Integer] -> Int
pares lista = length [x | x <- lista, even x]

-- Método 2: Función Recursiva
paresRecursivaGuardas :: [Integer] -> Int
paresRecursivaGuardas [] = 0
paresRecursivaGuardas (x:xs)
    | even x = 1 + paresRecursivaGuardas xs
    | otherwise = paresRecursivaGuardas xs

-- Método 2: Función Recursiva
paresRecursivaAlternativa :: [Integer] -> Int
paresRecursivaAlternativa [] = 0
paresRecursivaAlternativa (x:xs) =
    if even x
    then 1 + paresRecursivaAlternativa xs
    else paresRecursivaAlternativa xs

-- Método 3: Forma Funcional
paresFuncional :: [Integer] -> Int
paresFuncional lista = length (filter even lista)

-- Método 4: Función Lambda
paresLambda :: [Integer] -> Int
paresLambda lista = length (filter (\x -> even x) lista)

-- Función main para pruebas
main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5, 6]
    putStrLn $ "Cantidad de elementos pares (Método Básico): " ++ show (pares lista)
    putStrLn $ "Cantidad de elementos pares (Recursiva con Guardas): " ++ show (paresRecursivaGuardas lista)
    putStrLn $ "Cantidad de elementos pares (Recursiva con Alternativa): " ++ show (paresRecursivaAlternativa lista)
    putStrLn $ "Cantidad de elementos pares (Funcional): " ++ show (paresFuncional lista)
    putStrLn $ "Cantidad de elementos pares (Lambda): " ++ show (paresLambda lista)
