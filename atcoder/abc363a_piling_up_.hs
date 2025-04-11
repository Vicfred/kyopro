-- vicfred
-- https://atcoder.jp/contests/abc363/tasks/abc363_a
-- implementation
main :: IO ()
main = getLine >>= print . (100 -) . (`mod` 100) .(read @Int)
