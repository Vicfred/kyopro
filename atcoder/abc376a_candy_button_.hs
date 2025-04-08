-- vicfred
-- https://atcoder.jp/contests/abc376/tasks/abc376_a
-- implementation
main :: IO ()
main = do
  [n, c] <- map read . words <$> getLine :: IO [Int]
  t <- map read . words <$> getLine :: IO [Int]
  print $ candies c t

candies :: Int -> [Int] -> Int
candies c times = snd $ foldl folding (-c, 0) times
  where folding (t_candy, total_candy) last
          | last - t_candy >= c = (last, total_candy + 1) 
          | otherwise = (t_candy, total_candy)
