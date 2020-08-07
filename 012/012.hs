-- Divisor function is multiplicative but not completely multiplicative.
-- Nevertheless, as numbers n and n+1 are always coprime, we can use divisor function approach.  

numberOfDivisors n = length [ d | d <- [1 .. n], (mod n d) == 0]

numberOfDivisorsOfTriangularNumber n
    | mod n 2 == 0  = (numberOfDivisors $ div n 2) * (numberOfDivisors $ n + 1)
    | otherwise     = (numberOfDivisors n) * (numberOfDivisors $ div (n + 1) 2)

main = (print . (\x -> div (x * (x + 1)) 2) . head . filter (\x -> numberOfDivisorsOfTriangularNumber x > 500)) [1 ..]