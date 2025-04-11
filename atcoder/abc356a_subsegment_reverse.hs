-- vicfred
-- https://atcoder.jp/contests/abc356/tasks/abc356_a
-- implementation
main :: IO ()
main = do
  [n, l, r] <- map read . words <$> getLine :: IO [Int]
  putStrLn . unwords . map show $ take (l - 1) [1..n] ++ reverse [l..r] ++ [r+1..n]
