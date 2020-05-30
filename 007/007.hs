isPrime' n 
    | n <= 1 = False 
    | otherwise = not $ elem 0 $ map (mod n) [3..n-1]

main = print $ filter isPrime' [3 .. ] !! 10000 