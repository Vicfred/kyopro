-- uninhm
-- https://atcoder.jp/contests/abc133/tasks/abc133_a
-- basic math

solve [n, a, b] = min (n * a) b

main = interact $ show . solve . map read . words
