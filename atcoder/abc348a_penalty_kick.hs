-- vicfred
-- https://atcoder.jp/contests/abc348/tasks/abc348_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . flip take (cycle "oox") . (read @Int)
