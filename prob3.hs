import Data.List

isPrime :: Integer -> Bool
isPrime n = all (/=0) $ map (n `mod`) [2..floor . sqrt . fromIntegral $ n]

limit :: Integer
limit = 600851475143

smallLimit = floor . sqrt . fromIntegral $ limit

smallPrimes = filter isPrime [smallLimit, smallLimit - 1..2]

main = let factor = find (\i -> limit `mod` i == 0) smallPrimes in
       case factor of
           (Just x) -> print x
           Nothing -> print "error: could not find any factor"
