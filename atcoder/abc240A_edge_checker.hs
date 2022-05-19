-- uninhm
-- https://atcoder.jp/contests/abc240/tasks/abc240_a
-- implementation

import Data.Bool (bool)

areConnected :: [Int] -> Bool
areConnected [a, b] = a + 1 == b || a == 1 && b == 10
areConnected _ = error "Invalid input"

main :: IO ()
main = getLine >>= putStrLn
  . bool "No" "Yes"
  . areConnected
  . map read
  . words
