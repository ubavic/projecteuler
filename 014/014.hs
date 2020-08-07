collatz n
    | n == 1        = 1
    | mod n 2 == 0  = 1 + (collatz $ div n 2)
    | otherwise     = 1 + (collatz $ 3*n + 1)

main = print $ foldl1 (\x y -> if collatz x > collatz y then x else y) [1 .. 1000000]
