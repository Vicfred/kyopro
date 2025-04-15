-- vicfred
-- https://atcoder.jp/contests/abc300/tasks/abc300_a
-- implementation
main :: IO ()
main = do
  [n, a, b] <- map read . words <$> getLine :: IO [Int]
  cs <- map read . words <$> getLine :: IO [Int]
  let choices = takeWhile (/=(a+b)) cs
  print $ length choices + 1
