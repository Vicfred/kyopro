-- uninhm
-- https://atcoder.jp/contests/abc146/tasks/abc146_a
-- implementation

import Data.List (elemIndex)
import Data.Maybe (fromJust)

main = do
  li <- getLine
  let a = ["SAT", "FRI", "THU", "WED", "TUE", "MON", "SUN"] in
    print $ (+1) $ fromJust $ elemIndex li a
