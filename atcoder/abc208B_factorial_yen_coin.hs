-- uninhm
-- https://atcoder.jp/contests/abc208/tasks/abc208_b
-- implementation, recursion

factorial 0 = 1
factorial n = n * factorial (n - 1)

solve ans 1 p = ans+p
solve ans n p =
  solve (ans + p `div` f) (n-1) (p `mod` f)
    where f = factorial n

main = getLine >>= print . solve 0 10 . read
