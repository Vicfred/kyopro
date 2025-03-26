-- Vicfred
-- https://atcoder.jp/contests/abc397/tasks/abc397_a
-- implementation
main :: IO ()
main = do
  x <- readLn @Float
  let fever
        | x >= 38.0 = 1
        | x >= 37.5 = 2
        | otherwise = 3
  putStrLn $ show fever
