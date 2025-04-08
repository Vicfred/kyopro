-- vicfred
-- https://projecteuler.net/problem=28
-- sums
f :: Int -> Int
f n = 4 * (n - 2)^2 + 10 * (n - 1)

main :: IO ()
main = print . (+1) . sum . map f $ [3,5..1001]
