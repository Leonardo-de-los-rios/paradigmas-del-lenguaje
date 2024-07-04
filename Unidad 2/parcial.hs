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