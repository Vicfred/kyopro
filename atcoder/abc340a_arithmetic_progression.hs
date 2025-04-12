-- vicfred
-- https://atcoder.jp/contests/abc340/tasks/abc340_a
-- implementation
main :: IO ()
main = do
  [a, b, d] <- map read . words <$> getLine :: IO [Int]
  putStrLn . unwords $ map show [a,a+d..b]
