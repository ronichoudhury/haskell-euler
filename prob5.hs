import Data.Functor
import Data.List

ints = [20..]

divides a b = b `mod` a == 0

divisibleUpTo20 n = all id $ (`divides` n) <$> [2..20]

primes = [2,3,5,7,11,13,17,19]

primeFactors n = take (length primes) . reverse $ factorCount n primes [0]
    where factorCount _ [] counts = counts
          factorCount m (p:ps) (c:cs)
              | p `divides` m = factorCount (m `div` p) (p:ps) (c+1:cs)
              | otherwise     = factorCount m ps (0:c:cs)

factors = foldl (zipWith max) (take 8 $ repeat 0) (primeFactors <$> [2..20])
value = product $ zipWith (^) primes factors

main = print value
