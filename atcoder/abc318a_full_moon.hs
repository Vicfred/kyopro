-- vicfred
-- https://atcoder.jp/contests/abc318/tasks/abc318_a
-- implementation
main :: IO ()
main = getLine >>= print .length
                         .(\[n, m, p] -> [m, m+p..n])
                         .map read
                         .words
