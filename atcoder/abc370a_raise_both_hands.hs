-- vicfred
-- https://atcoder.jp/contests/abc370/tasks/abc370_a
-- implementation
main :: IO ()
main = getLine >>= putStrLn . f . map read . words

f :: [Int] -> String
f [1, 0] = "Yes"
f [0, 1] = "No"
f _      = "Invalid"
