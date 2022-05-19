-- uninhm
-- https://atcoder.jp/contests/abc249/tasks/abc249_c
-- implementation, brute force

import Data.Set (Set)
import qualified Data.Set as Set

import Control.Monad (replicateM)

subsets :: [a] -> [[a]]
subsets [] = [[]]
subsets (x:xs) = subsets xs ++ map (x:) (subsets xs)

count :: Ord a => [a] -> Int -> [Set a] -> Int
count [] _ _ = 0
count (x:xs) k s
  | length (filter (Set.member x) s) == k = 1 + count xs k s
  | otherwise = count xs k s

main :: IO ()
main = do
  [n, k] <- map read . words <$> getLine
  s <- map Set.fromList <$> replicateM n getLine
  print $ maximum $ map (count (Set.elems $ Set.unions s) k) (subsets s)
