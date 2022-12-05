-- uninhm
-- https://adventofcode.com/2022/day/3
-- implementation

import Data.Set (Set)
import qualified Data.Set as S

import Data.Char (ord)

parse :: String -> [[Set Char]]
parse = map f . lines
  where
    f line = map S.fromList [firstHalf line, secondHalf line]
    firstHalf s = take (length s `div` 2) s
    secondHalf s = drop (length s `div` 2) s

priority :: Char -> Int
priority c | 'A' <= c && c <= 'Z' = ord c - ord 'A' + 27
           | otherwise            = ord c - ord 'a' + 1

solve :: [[Set Char]] -> Int
solve input = sum
  $ priority . S.findMin . foldl1 S.intersection
    <$> input

main :: IO ()
main = print . solve . parse =<< readFile "input"
