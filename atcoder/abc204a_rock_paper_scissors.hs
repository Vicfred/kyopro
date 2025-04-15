-- vicfred
-- https://atcoder.jp/contests/abc204/tasks/abc204_a
-- implementation
main :: IO ()
main = getLine >>= print . (\[x, y] -> (6 - x - y) `mod` 3) . map read . words
