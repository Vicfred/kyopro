-- vicfred
-- https://atcoder.jp/contests/abc382/tasks/abc382_a
-- implementation
main :: IO ()
main = do
  [n, d] <- map read . words <$> getLine :: IO [Int]
  s <- getLine
  print $ (+d) . length . filter (== '.') $ s
