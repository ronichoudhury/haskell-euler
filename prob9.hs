import Control.Monad
import Data.List
import Data.Maybe

pythTriplet :: (Integral a) => (a, a, a) -> Bool
pythTriplet (a,b,c) = a*a + b*b == c*c

allTriples = map (\(a,b) -> (a, b, 1000 - a - b)) $ liftM2 (,) [1..998] [1..998]

main = print . fromJust $ find pythTriplet allTriples
