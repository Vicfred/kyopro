-- uninhm
-- https://atcoder.jp/contests/abc175/tasks/abc175_b
-- brute force, recursion

import Data.List

solution n l x y z ans
  | x >= n = ans
  | y >= n = solution n l (x+1) (x+2) (x+2) ans
  | z >= n = solution n l x (y+1) (y+1) ans
  | (l!!y) + (l!!z) > (l!!x) && (l!!y /= l!!z) && (l!!y /= l!!x) && (l!!z /= l!!x) =
    solution n l x y (z+1) (ans+1)
  | otherwise =
    solution n l x y (z+1) ans

main = do
  li <- getLine
  let n = read li
  li <- getLine
  let l = reverse $ sort $ map read $ words li
  print $ solution n l 0 1 1 0

