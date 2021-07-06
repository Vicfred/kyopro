-- uninhm
-- https://atcoder.jp/contests/abc175/tasks/abc175_b
-- brute force, recursion

import Data.List

solution' l x y z ans
  | x >= n = ans
  | y >= n = solution' l (x+1) (x+2) (x+2) ans
  | z >= n = solution' l x (y+1) (y+1) ans
  | (l!!y) + (l!!z) > (l!!x) && (l!!y /= l!!z) && (l!!y /= l!!x) && (l!!z /= l!!x) =
    solution' l x y (z+1) (ans+1)
  | otherwise =
    solution' l x y (z+1) ans
			where n = length l

solution l = solution' l 0 1 1 0

main = interact $ show . solution . reverse . sort . map read . words . last . lines
