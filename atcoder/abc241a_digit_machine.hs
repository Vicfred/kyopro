-- vicfred
-- https://atcoder.jp/contests/abc241/tasks/abc241_a
-- implementation
main :: IO ()
main = do
  as <- map read . words <$> getLine :: IO [Int]
  print $ as !! (as !! (as !! 0))
