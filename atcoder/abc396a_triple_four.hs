-- Vicfred
-- https://atcoder.jp/contests/abc396/tasks/abc396_a
-- implementation
main :: IO ()
main = do
  n <- readLn @Int
  a <- map read . words <$> getLine :: IO [Int]
  putStrLn $ f a

f :: [Int] -> String
f (_:_:[]) = "No"
f (x:y:z:xs)
  | x == y && y == z = "Yes"
  | otherwise = f (y:z:xs)
