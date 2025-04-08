-- vicfred
-- https://atcoder.jp/contests/abc376/tasks/abc376_a
-- implementation
main :: IO ()
main = do
  [n, c] <- map read . words <$> getLine :: IO [Int]
  t <- map read . words <$> getLine :: IO [Int]
  print $ candies c t

candies :: Int -> [Int] -> Int
candies c times = f (-c) 0 times
  where
    f _ count [] = count
    f last count (x:xs)
      | x - last >= c = f x (count + 1) xs
      | otherwise = f last count xs
