import System.Environment
import Text.Read

divides i n = n `mod` i == 0

isPrime n = not . any id $ map (`divides` n) [2..floor . sqrt . fromIntegral $ n]

nthPrime n = primeCounter 1 2
    where primeCounter :: Int -> Int -> Int
          primeCounter m i
              | isPrime i && n == m = i
	      | isPrime i = primeCounter (m+1) (i+1)
              | otherwise = primeCounter m (i+1)

main = print $ nthPrime 10001
