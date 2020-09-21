-- unihernandez22
-- https://atcoder.jp/contests/abc137/tasks/abc137_b
-- math

import Data.List (intercalate)

main = do
  li <- getLine
  let k:x:[] = map read $ words li
  putStrLn $ intercalate " " $ map show $
    if x - k + 1 < -10^6 then
      [-10^6 .. x+k-1]
    else if x + k - 1 > 10^6 then
      [10^6 .. x-k+1]
    else
      [x-k+1 .. x+k-1]
