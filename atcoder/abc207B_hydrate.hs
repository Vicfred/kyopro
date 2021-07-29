-- uninhm
-- https://atcoder.jp/contests/abc207/tasks/abc207_b
-- implementation

solve [a, b, c, d] = ceiling $ go 0
  where
    go x
      | x > 10^5 = -1
      | (a+b*x)/(c*x) <= d = x
      | otherwise = go (x+1)

main = interact $ show . solve . map read . words

