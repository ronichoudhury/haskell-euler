import Data.List

isPalindrome :: (Show a) => a -> Bool
isPalindrome v = s == reverse s
    where s = show v

tripleDigitProducts :: [Integer]
tripleDigitProducts = do a <- [100..999]
                         b <- [100..999]
                         return $ a * b

palindromes = filter isPalindrome tripleDigitProducts

main = print $ maximum palindromes
