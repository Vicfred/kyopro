-- vicfred
-- https://atcoder.jp/contests/abc302/tasks/abc302_a
-- implementation
main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  print $ (a + b - 1) `div` b
