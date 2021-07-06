-- uninhm
-- https://atcoder.jp/contests/abc137/tasks/abc137_a
-- implementation

solve (a:b:[]) = max (a + b) $ max (a - b) (a * b)

main = interact $ show . solve . map read . words
