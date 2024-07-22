{- Ejercicio 2:
Realizar el seguimiento de la siguiente función, para el objetivo: sigue [1,2,3] e indicar la salida. -}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use map" #-}

otra :: (Integral a) => a -> [a] -> [[a]]
otra x [] = []
otra x (p:xp) = [x,p] : otra x xp

sigue :: (Integral a) => [a] -> [[a]]
sigue [] = []
sigue (x:xs) = otra x xs ++ sigue xs

{- Ejercicio 3:
Definir la función enlace que reciba como argumento dos listas de pares de elementos y construya una nueva lista de pares de la siguiente manera: 

enlace [[1,2],[5,6],[20,8]] [[6,100],[1,200],[3,300],[2,400],[8,500]]
-}

-- enlace [[1,2],[5,6],[20,8]] [[6,100],[1,200],[3,300],[2,400],[8,500]]
-- enlace [[1,2]] [[6,100],[1,200],[3,300],[2,400]]

-- Mal
{-
enlace :: (Integral a) => [[a]] -> [[a]] -> [[a]]
enlace [[]] _ = [[]]
enlace (x:xs) y = otro (head x) y ++ enlace xs y

otro :: (Integral a) => a -> [[a]] -> [[a]]
otro _ [[]] = [[]]
otro p (x:xs) 
    | p /= last x = otro p xs
    | otherwise = [[p,last x]]
-}

-- Correcto
enlace :: (Integral a) => [[a]] -> [[a]] -> [[a]]
enlace [[]] _ = [[]]
enlace (x:xs) y = otro x y ++ enlace xs y

-- x=[1,2]; xs=[[5,6],[20,8]]
-- y=[[6,100],[1,200],[3,300],[2,400],[8,500]]

otro :: (Integral a) => [a] -> [[a]] -> [[a]]
otro _ [[]] = [[]]
otro x (y:ys)
    | last x /= head y = otro x ys
    | otherwise = [[head x,last y]]

-- otro 1 ([6,100]:[[1,200],[3,300],[2,400],[8,500]])
-- 1 /= 