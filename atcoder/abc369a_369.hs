-- vicfred
-- https://atcoder.jp/contests/abc369/tasks/abc369_a
-- implementation
main :: IO ()
main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  print $ arithmetic a b

arithmetic :: Int -> Int -> Int
arithmetic a b
          | a == b = 1
          | (a + b) `mod` 2 == 0 = 3
          | otherwise = 2
