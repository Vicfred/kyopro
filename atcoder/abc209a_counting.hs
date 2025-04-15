-- vicfred
-- https://atcoder.jp/contests/abc209/tasks/abc209_a
-- implementation
main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  print . length $ [a..b]
