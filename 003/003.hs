
factor n m
	| m > n        = []
	| mod n m == 0 = m : factor (div n m) m
	| otherwise    = factor n (m+1)

main = print $ maximum $ factor 600851475143 2