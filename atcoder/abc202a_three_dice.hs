-- vicfred
-- https://atcoder.jp/contests/abc202/tasks/abc202_a
-- implementation
main :: IO ()
main = getLine >>= print . (21 -) . sum . map read . words
