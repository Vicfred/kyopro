import Data.Bool (bool)
-- vicfred
-- https://atcoder.jp/contests/abc400/tasks/abc400_a
-- implementation
main :: IO ()
main = getLine >>= print . f . read

f :: Int -> Int
f n
  | 400 `mod` n == 0 = 400 `div` n
  | otherwise = -1
