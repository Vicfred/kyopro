-- uninhm
-- https://atcoder.jp/contests/abc205/tasks/abc205_c
-- implementation

compare' a b
  | a > b     = ">"
  | a < b     = "<"
  | otherwise = "="

solve [a, b, c]
  | even c = compare' (abs a) (abs b)
  | otherwise = compare' a b

main = interact $ solve . map read . words
