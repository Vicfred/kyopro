-- vicfred
-- https://atcoder.jp/contests/abc363/tasks/abc363_a
-- implementation
main :: IO ()
main = do
  r <- read <$> getLine :: IO Int
  print $ minRating r

minRating :: Int -> Int
minRating r
          | r < 100 = 100 - r
          | r < 200 = 200 - r
          | r < 300 = 300 - r
          | otherwise = 400
