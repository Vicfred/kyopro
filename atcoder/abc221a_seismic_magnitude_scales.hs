-- vicfred
-- https://atcoder.jp/contests/abc221/tasks/abc221_a
-- implementation
main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  print $ 32 ^ (a - b)
