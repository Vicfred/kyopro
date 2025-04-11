-- vicfred
-- https://atcoder.jp/contests/abc351/tasks/abc351_a
-- implementation
main :: IO ()
main = do
  a <- map read . words <$> getLine :: IO [Int]
  b <- map read . words <$> getLine :: IO [Int]
  print $ (sum a) - (sum b) + 1
