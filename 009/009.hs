main :: IO ()
main = print . head . filter rightTriangle $ [ (x, y, perimeter - x - y) | x <- [1 .. perimeter], y <- [1 .. min (perimeter - x)  (x - 1) ] ]
  where
    perimeter = 1000
    rightTriangle (a, b, c) = a^2 + b^2 == c^2