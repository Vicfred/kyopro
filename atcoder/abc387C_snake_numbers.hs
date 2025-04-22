-- uninhm
-- https://atcoder.jp/contests/abc387/tasks/abc387_c
-- combinatorics, greedy

count first [] _ = 1
count first (d:digits) b
  | d > first = count first (first:digits) b
count first (d:digits) False = d * count first digits True + if d /= first then count first digits False else 0
count first (d:digits) True  = first * count first digits True

count' (x:xs) = sum [i^j | i <- [1..9], j<-[0..l-1]] + sum [i^l | i <- [1..x-1]] + count x xs False
  where l = length xs

digits = map (read . (:[])) . show

main = do
  [l, r] <- map read . words <$> getLine
  print $ count' (digits r) - count' (digits (l-1))
