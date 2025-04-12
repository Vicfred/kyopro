-- vicfred
-- https://atcoder.jp/contests/abc331/tasks/abc331_a
-- implementation
main :: IO ()
main = do
  a <- map read . words <$> getLine :: IO [Int]
  b <- map read . words <$> getLine :: IO [Int]
  putStrLn $ unwords $ map show (f a b)

f :: [Int] -> [Int] -> [Int]
f [month, day] [y, m, d]
                | d == day && m == month = [y + 1, 1, 1]
                | d == day = [y, m + 1, 1]
                | otherwise = [y, m, d + 1]
