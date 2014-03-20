import Data.List

countup :: [Integer]
countup = 2:(zipWith (+) (repeat 1) countup)

primes :: [Integer]
primes = sieve countup
    where sieve (x:xs) = x:(sieve $ filter (\i -> i `mod` x /= 0) xs)

ourPrimes = reverse $ takeWhile (<600851475143) primes

main = do let factor = find (\i -> 600851475143 `mod` i == 0) ourPrimes
          putStrLn $ case factor of
	      (Just x) -> show x
	      Nothing -> "error: could not find any factor"
