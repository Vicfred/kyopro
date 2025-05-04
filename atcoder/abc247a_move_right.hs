-- vicfred
-- https://atcoder.jp/contests/abc247/tasks/abc247_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . ("0" ++ ) . init
