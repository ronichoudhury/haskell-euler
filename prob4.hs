import Data.List

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

tripleDigitProducts :: [Integer]
tripleDigitProducts = do a <- [999,998..100]
                         b <- [999,998..100]
                         return $ a * b

palindromes = filter (isPalindrome . show) tripleDigitProducts

main = print $ maximum palindromes
