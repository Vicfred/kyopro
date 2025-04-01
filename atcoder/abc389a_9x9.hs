-- vicfred
-- https://atcoder.jp/contests/abc389/tasks/abc389_a
-- implementation
import Data.Char (digitToInt)

main :: IO ()
main = getLine >>= putStrLn . show . f

f :: String -> Int
f [a, _, b] = digitToInt a * digitToInt b
