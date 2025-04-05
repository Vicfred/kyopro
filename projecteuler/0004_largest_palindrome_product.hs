-- vicfred
-- https://projecteuler.net/problem=4
-- palindrome
isPalindrome :: Integer -> Bool
isPalindrome s = show s == (reverse . show) s

main :: IO ()
main = print $ maximum $ filter isPalindrome [x * y | x <- [100..999], y <- [100..999]]
