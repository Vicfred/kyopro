-- vicfred
-- https://atcoder.jp/contests/abc385/tasks/abc385_a
-- implementation
import Data.Bool

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . f . map (read @Int) . words

f :: [Int] -> Bool
f [a, b, c]
    | a == b && b == c = True
    | a + b == c = True
    | a + c == b = True
    | b + c == a = True
    | otherwise = False
