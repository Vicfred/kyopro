-- vicfred
-- https://atcoder.jp/contests/abc235/tasks/abc235_a
-- implementation
import Data.Char (digitToInt)

main :: IO ()
main = getLine >>= print . (\[a, b, c] -> 111*(a+b+c)) .map digitToInt
