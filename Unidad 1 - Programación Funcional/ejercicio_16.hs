{- Ejercicio Nº 16:
Construir un programa no recursivo que realice la suma de números complejos, los cuales se ingresan en sublistas con pares de números donde el primer elemento es la componente real y el segundo la componente imaginaria. -}

-- Método 1: Función Básica
complejos :: (Integral a) => [[a]] -> [a]
complejos (r:rs) = zipWith (+) r (head rs)