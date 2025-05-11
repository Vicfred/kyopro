-- vicfred
-- https://atcoder.jp/contests/abc257/tasks/abc257_a
-- implementation
main :: IO ()
main = do
  [n, x] <- map read . words <$> getLine :: IO [Int]
  putStrLn [['A'..'Z'] !! ((x - 1) `div` n)]
