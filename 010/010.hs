primes :: [Int] -> [Int]
primes l
    | p ^ 2 > last l = l
    | otherwise = p : (filter (\x -> mod x p /= 0) $ primes $ tail l)
    where p = head l

main :: IO ()
main = print . sum . primes $ [2 .. 2000000]