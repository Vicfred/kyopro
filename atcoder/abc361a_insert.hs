-- vicfred
-- https://atcoder.jp/contests/abc361/tasks/abc361_a
-- implementation
main :: IO ()
main = do
  [n, k, x] <- map read . words <$> getLine :: IO [Int]
  a <- map read . words <$> getLine :: IO [Int]
  putStrLn . unwords . map show $ (take k a) ++ [x] ++ (drop k a)
