-- vicfred
-- https://atcoder.jp/contests/abc367/tasks/abc367_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . f . map (read @Int) . words

f :: [Int] -> Bool
f [a, b, c] =
  if b < c then
    if b < a && a < c then
      False
    else
      True
  else
    if c < a && a < b then
      True
    else
      False
