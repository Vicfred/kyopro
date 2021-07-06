-- uninhm
-- https://atcoder.jp/contests/abc143/tasks/abc143_a
-- basic math

solve (a:b:[]) = max 0 $ a - 2 * b

main = interact $ show . solve . map read . words
