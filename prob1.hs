import Data.Functor

countup :: [Integer]
countup = 1 : (zipWith (+) (repeat 1) countup)

listSum = sum . takeWhile (<1000)

threes = listSum $ (3*) <$> countup
fives = listSum $ (5*) <$> countup
fifteens = listSum $ (15*) <$> countup

main = putStrLn . show $ threes + fives - fifteens
