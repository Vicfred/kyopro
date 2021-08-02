-- uninhm
-- https://codeforces.com/contest/1535/problem/A
-- implementation

import Data.List (sort)

pairToList (a, b) = [a, b]

solve :: [Int] -> String
solve l =
  if drop 2 (sort l) ==
     sort (map maximum $ pairToList $ splitAt 2 l) then
    "Yes"
  else
    "No"

main = interact $ unlines . map (solve . map read . words) . tail . lines
