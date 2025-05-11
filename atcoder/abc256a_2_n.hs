-- vicfred
-- https://atcoder.jp/contests/abc256/tasks/abc256_a
-- implementation
main :: IO ()
main = getLine >>= print . (2^) . read
