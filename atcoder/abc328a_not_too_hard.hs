-- vicfred
-- https://atcoder.jp/contests/abc328/tasks/abc328_a
-- implementation
main :: IO ()
main = do
  [n, x] <- map read . words <$> getLine :: IO [Int]
  s <- map read . words <$> getLine :: IO [Int]
  print . sum . filter (<= x) $ s
