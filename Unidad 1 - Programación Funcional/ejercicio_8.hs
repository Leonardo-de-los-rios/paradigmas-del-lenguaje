{- Ejercicio Nº 8:
Definir una función recursiva que permita eliminar los elementos repetidos de una lista de átomos. -}

-- Método 1: Función Recursiva
eliminarRecursiva :: (Eq a) => [a] -> [a]
eliminarRecursiva [] = []
eliminarRecursiva (x:xs) = 
    if notElem x xs
    then x : eliminarRecursiva xs
    else eliminarRecursiva xs