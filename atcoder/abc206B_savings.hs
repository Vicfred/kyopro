-- uninhm
-- https://atcoder.jp/contests/abc206/tasks/abc206_b
-- math, gauss

solution n =
  ceiling $ (-1 + sqrt (1 + 8*n))/2

main = interact $ show . solution . read
