-- uninhm
-- https://atcoder.jp/contests/abc245/tasks/abc245_a
-- implementation

solve :: [Int] -> String
solve [a, b, c, d]
  | a < c = "Takahashi"
  | c < a = "Aoki"
  | d < b = "Aoki"
  | otherwise = "Takahashi"

main = getLine >>= putStrLn . solve . map read . words
