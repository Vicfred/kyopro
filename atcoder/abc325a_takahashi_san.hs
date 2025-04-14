-- vicfred
-- https://atcoder.jp/contests/abc325/tasks/abc325_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . (++ " san") . head . words
