-- vicfred
-- https://atcoder.jp/contests/abc200/tasks/abc200_a
-- implementation
main :: IO ()
main = getLine >>= print . (`div` 100) . (+99) .read
