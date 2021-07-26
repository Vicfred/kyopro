-- uninhm
-- https://atcoder.jp/contests/abc142/tasks/abc142_a
-- basic probability

solve n = (/n).fromIntegral.floor $ (n + 1) / 2

main = interact $ show . solve . read
