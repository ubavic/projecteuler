isPalindrome n
    | a == f && b == e && c == d = True
    | otherwise                  = False 
    where a = mod (div n 100000) 10
          b = mod (div n 10000) 10 
          c = mod (div n 1000) 10
          d = mod (div n 100) 10
          e = mod (div n 10) 10
          f = mod n 10  

main = print $ maximum $ filter isPalindrome [ x*y | x <- [101..999], y <- [101..x]]