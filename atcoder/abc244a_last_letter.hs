-- vicfred
-- https://atcoder.jp/contests/abc244/tasks/abc244_a
-- implementation
main :: IO ()
main = getLine >> getLine >>= putStrLn . (:[]) . last
