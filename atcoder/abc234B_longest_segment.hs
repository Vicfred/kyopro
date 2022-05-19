-- uninhm
-- https://atcoder.jp/contests/abc234/tasks/abc234_b
-- implementation

import Control.Monad (replicateM)

parse :: [String] -> [[Double]]
parse = map (map read . words)

distance :: ([Double], [Double]) -> Double
distance ([x1, y1], [x2, y2]) = sqrt $ (x1 - x2)^2 + (y1 - y2)^2

pairs :: Eq a => [a] -> [(a, a)]
pairs xs = [(x, y) | x <- xs, y <- xs, x /= y]

solve :: [[Double]] -> Double
solve = maximum . map distance . pairs

main :: IO ()
main = readLn >>= flip replicateM getLine >>= print . solve . parse
