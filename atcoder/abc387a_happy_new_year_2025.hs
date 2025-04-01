-- vicfred
-- https://atcoder.jp/contests/abc387/tasks/abc387_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . show . (^2) . sum . map read . words
