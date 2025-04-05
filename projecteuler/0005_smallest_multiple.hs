-- vicfred
-- https://projecteuler.net/problem=5
-- divisibility
lcmList :: [Integer] -> Integer
lcmList [] = 1
lcmList (x:xs) = lcm x (lcmList xs)

main :: IO ()
main = print $ lcmList [1..21]
