-- Vicfred
-- https://atcoder.jp/contests/abc399/tasks/abc399_a
-- implementation
main :: IO ()
main = do
  readLn @Int
  s <- getLine
  t <- getLine
  print $ length $ filter not $ zipWith (==) s t
