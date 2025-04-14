-- vicfred
-- https://atcoder.jp/contests/abc354/tasks/abc354_a
-- math
main :: IO ()
main = do
  h <- read <$> getLine :: IO Int
  print . length . takeWhile (<= h) $ map (pred . (2^)) [0..]
