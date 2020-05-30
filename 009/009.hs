main = print $ head $ filter (\(c, b, a) -> a^2 + b^2 == c^2) [(x, y, perimiter - x - y) | x <- [1 .. perimiter], y <- [1 .. min (perimiter - x)  $  x - 1 ] ]
    where perimiter = 1000