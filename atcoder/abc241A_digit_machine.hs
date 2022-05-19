-- uninhm
-- https://atcoder.jp/contests/abc241/tasks/abc241_a
-- implementation

import Data.List (iterate)

main :: IO ()
main = getLine >>= print
  . (!! 3)
  . ($ 0)
  . iterate
  . (!!)
  . map read
  . words
