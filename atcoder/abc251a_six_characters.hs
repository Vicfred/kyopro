-- vicfred
-- https://atcoder.jp/contests/abc251/tasks/abc251_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . take 6 . concat . repeat
