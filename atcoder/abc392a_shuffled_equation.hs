-- Vicfred
-- https://atcoder.jp/contests/abc392/tasks/abc392_a
-- implementation
import Data.Bool

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . f . map read . words

f :: [Int] -> Bool
f [a, b, c]
    | a * b == c = True
    | b * c == a = True
    | c * a == b = True
    | otherwise = False
