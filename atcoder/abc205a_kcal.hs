-- vicfred
-- https://atcoder.jp/contests/abc205/tasks/abc205_a
-- implementation
main :: IO ()
main = getLine >>= print . (\[x, y] -> (x * y)/100) . map read . words
