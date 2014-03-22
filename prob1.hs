import Data.Functor

ints = [1..]

listSum = sum . takeWhile (<1000)

threes = listSum $ (3*) <$> ints
fives = listSum $ (5*) <$> ints
fifteens = listSum $ (15*) <$> ints

main = print $ threes + fives - fifteens
