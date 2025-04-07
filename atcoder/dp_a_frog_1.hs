-- vicfred
-- https://atcoder.jp/contests/dp/tasks/dp_a
-- dynamic programming
import Data.Array

frog :: Int -> [Int] -> Int
frog n h = dp ! n
  where
    hs = listArray (1,n) h
    dp = listArray (1,n) $ map f [1..]
    f 1 = 0
    f 2 = cost 1 2
    f i = min (dp!(i-1) + cost i (i-1)) (dp!(i-2) + cost i (i-2))
    cost i j = abs(hs!i - hs!j)

main :: IO ()
main = do
  n <- read <$> getLine :: IO Int
  h <- map read . words <$> getLine :: IO [Int]
  print $ frog n h
