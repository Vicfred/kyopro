-- uninhm
-- https://adventofcode.com/2022/day/8#part2
-- implementation, set

import Data.List (transpose)
import Data.Set (Set)
import qualified Data.Set as Set

parse :: String -> [[Int]]
parse = (map . map) (read . (:[])) . lines

countVisible :: Int -> [Int] -> Int
countVisible _ [] = 0
countVisible h (x:xs)
  | h > x     = 1 + countVisible h xs
  | otherwise = 1

calc grid y x = product
  [ countVisible h $ reverse $ take x $ grid !! y
  , countVisible h $ drop (x+1) $ grid !! y
  , countVisible h $ reverse $ take y $ grid' !! x
  , countVisible h $ drop (y+1) $ grid' !! x
  ] where h = grid !! y !! x
          grid' = transpose grid

solve :: [[Int]] -> Int
solve grid = maximum [ calc grid y x | y <- [0 .. h-1], x <- [0 .. w-1] ]
  where h = length grid
        w = length $ head grid

main :: IO ()
main = print . solve . parse =<< readFile "input"
