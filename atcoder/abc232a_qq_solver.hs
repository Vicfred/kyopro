-- vicfred
-- https://atcoder.jp/contests/abc232/tasks/abc232_a
-- implementation
import Data.Char (digitToInt)

main :: IO ()
main = getLine >>= print . f

f :: String -> Int
f [a, _, b] = digitToInt a * digitToInt b
