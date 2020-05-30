main = print $ (-) ((^) (sum [1..n]) 2) $ sum $ map (^2) [1..n]
    where n = 100