-- vicfred
-- https://atcoder.jp/contests/abc211/tasks/abc211_a
-- implementation
main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Float]
  print $ (a - b) / 3 + b
