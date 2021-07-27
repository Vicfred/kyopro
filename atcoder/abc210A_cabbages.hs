-- uninhm
-- https://atcoder.jp/contests/abc210/tasks/abc210_a
-- basic math

solve [n, a, x, y]
  | n <= a = n*x
  | otherwise = a*x + (n-a)*y

main = interact $ show . solve . map read . words
