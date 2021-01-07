numberOfWays :: Int -> Int -> Int
numberOfWays 200 _ = 1
numberOfWays _   8 = 0
numberOfWays sumOfCoins currentCoin = sum . map (\x -> numberOfWays (sumOfCoins + x) nextCoin) $ sumsOfCurrentCoin
  where
      nextCoin = currentCoin + 1
      sumsOfCurrentCoin = [ x * coin currentCoin | x <- [0 .. (div (200 - sumOfCoins) $ coin currentCoin)]]

coin :: Int -> Int
coin n = [1, 2, 5, 10, 20, 50, 100, 200] !! n 

main :: IO ()
main = print (numberOfWays 0 0)