-- uninhm
-- https://atcoder.jp/contests/abc211/tasks/abc211_a
-- implementation

solve [a, b] =
  (a - b) / 3 + b

main = interact $ show . solve . map read . words
