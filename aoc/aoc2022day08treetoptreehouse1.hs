-- uninhm
-- https://adventofcode.com/2022/day/8
-- implementation, set

import Data.List (transpose)
import Data.Set (Set)
import qualified Data.Set as Set

parse :: String -> [[Int]]
parse = (map . map) (read . (:[])) . lines

countVisible :: [Int] -> [Int]
countVisible = go 0 (-1) where
  go _ _ [] = []
  go i max (x:xs)
    | x > max = i : go (i + 1) x xs
    | otherwise = go (i + 1) max xs

solve :: [[Int]] -> Int
solve grid = Set.size $ Set.unions
  [ f id id id grid
  , f id reverseIdcs reverse grid
  , f flip id id grid'
  , f flip reverseIdcs' reverse grid'
  ] where grid' = transpose grid
          reverseIdcs = map (length grid' - 1 -)
          reverseIdcs' = map (length grid - 1 -)
          f g h i grid = Set.fromList $ concat $ zipWith (map . g (,)) [0..] $ map (h . countVisible . i) grid

main :: IO ()
main = print . solve . parse =<< readFile "input"
