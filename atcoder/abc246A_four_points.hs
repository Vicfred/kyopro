-- uninhm
-- https://atcoder.jp/contests/abc246/tasks/abc246_a
-- implementation

import Data.Map (Map)
import qualified Data.Map as M

import Control.Monad (replicateM)
import Data.List (transpose)

count :: Ord a => [a] -> Map a Int
count xs = go M.empty xs
  where
    go m [] = m
    go m (x:xs) = go (M.insertWith (+) x 1 m) xs

firstUnique :: Ord a => [a] -> a
firstUnique
  = fst
  . head
  . filter (\(x, y) -> y == 1)
  . M.toList
  . count

solve :: [[Int]] -> [Int]
solve = map firstUnique

showSolution :: [Int] -> String
showSolution = unwords . map show

main :: IO ()
main = replicateM 3 getLine >>= putStrLn
  . showSolution
  . solve
  . transpose
  . map (map read . words)
