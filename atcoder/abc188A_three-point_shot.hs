-- uninhm
-- https://atcoder.jp/contests/abc188/tasks/abc188_a
-- implementation

import Data.Bool (bool)

main :: IO ()
main = interact
  $ (++ "\n")
  . bool "No" "Yes"
  . (< 3)
  . (\[x, y] -> abs (x - y))
  . map read
  . words
