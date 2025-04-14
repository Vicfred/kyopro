-- vicfred
-- https://atcoder.jp/contests/abc357/tasks/abc357_a
-- implementation
main :: IO ()
main = do
  [n, m] <- map read . words <$> getLine :: IO [Int]
  h <- map read . words <$> getLine :: IO [Int]
  print . length . takeWhile (<= m) $ scanl1 (+) h
