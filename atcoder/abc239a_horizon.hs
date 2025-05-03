-- vicfred
-- https://atcoder.jp/contests/abc239/tasks/abc239_a
-- implementation
main :: IO ()
main = do
  h <- read <$> getLine :: IO Double
  print $ sqrt(h * (12800000 + h))
