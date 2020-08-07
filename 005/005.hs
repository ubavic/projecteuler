isPrime n 
    | n <= 1 = False 
    | otherwise = not $ elem 0 $ map (mod n) [2..n-1]

main = print $ product [ p^e | p <- primes, e <- [1..4], p^e < 20, p^(e+1) > 20]
    where primes = filter isPrime [1..20]