-- uninhm
-- https://atcoder.jp/contests/abc134/tasks/abc134_a
-- implementation

solve r = 3 * r^2

main = interact $ show . solve . read
