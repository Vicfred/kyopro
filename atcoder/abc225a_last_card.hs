-- vicfred
-- https://atcoder.jp/contests/abc227/tasks/abc227_a
-- implementation
main :: IO ()
main = do
  [n, k, a] <- map read . words <$> getLine :: IO [Int]
  print . head . drop (a + k - 2) . cycle $ [1..n]
