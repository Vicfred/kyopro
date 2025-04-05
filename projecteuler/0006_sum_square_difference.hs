-- vicfred
-- https://projecteuler.net/problem=6
-- sum
main :: IO ()
main = print $ sum [1..100] * sum [1..100] - sum [x^2 | x <- [1..100]]
