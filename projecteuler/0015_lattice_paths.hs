-- vicfred
-- https://projecteuler.net/problem=15
-- combinatorics, dynamic programming
factorial :: Integer -> Integer
factorial n = product [1..n]

-- Choose 20 right movements and 20 down movements: n choose k
main :: IO ()
main = print $ factorial 40 `div` (factorial 20 * factorial 20)
