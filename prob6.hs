sumSqDiff n = sum $ map (uncurry kroneckerProduct) pairs
    where kroneckerProduct a b
            | a == b = 0
            | otherwise = a * b
          pairs = do x <- [1..n]
                     y <- [1..n]
                     return $ (x, y)

main = print $ sumSqDiff 100
