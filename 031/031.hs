numberOfWays :: Int -> Int -> Int
numberOfWays 200 _ = 1
numberOfWays _   8 = 0
numberOfWays sumOfCoins currentCoin = sum . map (\x -> numberOfWays (sumOfCoins + x) nextCoin) $ sumsOfCurrentCoin
  where
      nextCoin = currentCoin + 1
      sumsOfCurrentCoin = [ x * coin currentCoin | x <- [0 .. (div (200 - sumOfCoins) $ coin currentCoin)]]

coin :: Int -> Int
coin n = [200, 100, 50, 20, 10, 5, 2, 1] !! n 

main :: IO ()
main = print (numberOfWays 0 0)