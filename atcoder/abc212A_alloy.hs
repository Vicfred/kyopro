-- uninhm
-- https://atcoder.jp/contests/abc212/tasks/abc212_a
-- implementation

solve [a, b]
  | a == 0    = "Silver"
  | b == 0    = "Gold"
  | otherwise = "Alloy"

main = getLine >>= putStrLn . solve . map read . words
