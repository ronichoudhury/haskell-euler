fibo :: [Integer]
fibo = 1:2:(zipWith (+) fibo (tail fibo))

main = print . sum . takeWhile (<4000000) $ filter even fibo
