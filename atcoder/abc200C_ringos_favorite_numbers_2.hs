-- uninhm
-- https://atcoder.jp/contests/abc200/tasks/abc200_c
-- greedy, modulo, combinatorics

import Data.Map (Map)
import qualified Data.Map as Map

getInts :: IO [Int]
getInts = map read . words <$> getLine

count :: Ord a => [a] -> Map a Int
count xs = go Map.empty xs
  where
    go m [] = m
    go m (x:xs) = go (Map.insertWith (+) x 1 m) xs

main :: IO ()
main = do
  n <- readLn :: IO Int
  a <- map (`mod` 200) <$> getInts

  let m = count a
  print $ sum $ map (calc m) $ Map.keys m

calc :: Map Int Int -> Int -> Int
calc m x = n * (n-1) `div` 2
  where n = m Map.! x
