-- scanner 3 [2,5,1]

scanner :: (Integral a) => a -> [a] -> [a]
scanner n [] = [n]
scanner n (x:xs) = x + head (scanner n xs) : scanner n xs