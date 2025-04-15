-- vicfred
-- https://atcoder.jp/contests/abc210/tasks/abc210_a
-- implementation
main :: IO ()
main = do
  [n, a, x, y] <- map read . words <$> getLine :: IO [Int]
  if n <= a then
    print $ n * x
  else
    print $ a * x + (n - a) * y
