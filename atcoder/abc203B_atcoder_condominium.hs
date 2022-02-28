-- uninhm
-- https://atcoder.jp/contests/abc203/tasks/abc203_b
-- math

gauss :: Integral a => a -> a
gauss n = n*(n+1) `div` 2

main :: IO ()
main = do
  [n, k] <- map read . words <$> getLine
  print $ (gauss n)*k*100 + (gauss k)*n
