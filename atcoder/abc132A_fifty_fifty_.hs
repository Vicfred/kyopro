-- unihernandez22
-- https://atcoder.jp/contests/abc132/tasks/abc132_a
-- greedy

import Data.Set (fromList, size)

main = do
  s <- getLine
  putStrLn $
    if (size $ fromList s) == 2 then
      "Yes"
    else
      "No"

