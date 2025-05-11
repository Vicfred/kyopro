-- vicfred
-- https://atcoder.jp/contests/abc258/tasks/abc258_a
-- implementation
main :: IO ()
main = do
  k <- read <$> getLine :: IO Int
  let f k
        | k < 10 = "21:0" ++ show k
        | k < 60 = "21:" ++ show k
        | k < 70 = "22:0" ++ show (k - 60)
        | otherwise = "22:" ++ show (k - 60)
  putStrLn $ f k
