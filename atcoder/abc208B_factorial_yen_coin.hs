-- uninhm
-- https://atcoder.jp/contests/abc208/tasks/abc208_b
-- implementation, recursion

factorial 0 = 1
factorial n = n * factorial (n - 1)

solve 1 p = p
solve n p =
  p `div` f + solve (n-1) (p `mod` f)
    where f = factorial n

main = getLine >>= print . solve 10 . read
