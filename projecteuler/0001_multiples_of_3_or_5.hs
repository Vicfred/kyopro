-- vicfred
-- https://projecteuler.net/problem=1
-- divisibility
main :: IO ()
main = print $ sum [x | x <- [0..1000-1], x `mod` 3 == 0 || x `mod` 5 == 0]
