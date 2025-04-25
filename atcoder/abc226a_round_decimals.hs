-- vicfred
-- https://atcoder.jp/contests/abc226/tasks/abc226_a
-- implementation
main :: IO ()
main = getLine >>= print . floor . (+ 0.5) . read
