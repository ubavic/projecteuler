evenFibonacci n
    | n == 1 = 2
    | n == 2 = 8
    | otherwise = 4 * evenFibonacci (n - 1) + evenFibonacci (n - 2)

main = print $ sum . takeWhile (<4000000) $ map evenFibonacci [1..]