-- uninhm
-- https://atcoder.jp/contests/abc241/tasks/abc241_b
-- implementation, associative array

import Data.Map (Map)
import qualified Data.Map as M

import Data.Bool (bool)

count :: Ord a => [a] -> Map a Int
count = go M.empty
  where
    go m [] = m
    go m (x:xs) = go (M.insertWith (+) x 1 m) xs

readInts :: IO [Int]
readInts = map read . words <$> getLine

main :: IO ()
main = do
  [n, m] <- readInts
  a <- readInts
  b <- readInts

  let cntb = count b
      cnta = M.union (count a) $ M.map (const 0) cntb

  putStrLn $ bool "No" "Yes" $ all (>= 0) $ M.unionWith (-) cnta cntb
