-- vicfred
-- https://projecteuler.net/problem=21
-- divisors
divisors :: Integer -> [Integer]
divisors n = 1 : filter ((== 0) . rem n) [2..n `div` 2]

d :: Integer -> Integer
d = sum . divisors

main :: IO ()
main = print . sum $ [n | n <- [1..10000], n /= d n, n == (d . d) n]
