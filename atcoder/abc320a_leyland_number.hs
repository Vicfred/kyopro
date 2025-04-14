-- vicfred
-- https://atcoder.jp/contests/abc320/tasks/abc320_a
-- implementation
main :: IO ()
main = getLine >>= print . (\[a,b] -> a^b + b^a) . map (read @Int) . words
