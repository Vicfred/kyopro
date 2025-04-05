-- vicfred
-- https://projecteuler.net/problem=2
-- fibonacci
fibonacci :: [Integer]
fibonacci = 0 : 1 : zipWith (+) fibonacci (tail fibonacci)

main :: IO ()
main = print $ sum . filter even . takeWhile (< 4000000) $ fibonacci
