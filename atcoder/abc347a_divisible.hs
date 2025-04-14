-- vicfred
-- https://atcoder.jp/contests/abc347/tasks/abc347_a
-- implementation
main :: IO ()
main = do
  [n, k] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  putStrLn $ unwords .map show
                     .map (`div` k)
                     .filter ((== 0) . (`mod` k)) $ a
