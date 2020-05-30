sumOfFifthPowers n
    | n < 10 = n^5
    | otherwise = (mod n 10)^5 + sumOfFifthPowers (div n 10)

main = print $ sum $ filter (\x -> x == sumOfFifthPowers x) [2 .. 10^6]