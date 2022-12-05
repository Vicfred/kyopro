-- uninhm
-- https://adventofcode.com/2022/day/3#part2
-- implementation
--
import Data.Set (Set)
import qualified Data.Set as S

import Data.Char (ord)

groupsOf :: Int -> [a] -> [[a]]
groupsOf _ [] = []
groupsOf n xs = take n xs : groupsOf n (drop n xs)

parse :: String -> [Set Char]
parse = map S.fromList . lines

priority :: Char -> Int
priority c | 'A' <= c && c <= 'Z' = ord c - ord 'A' + 27
           | otherwise            = ord c - ord 'a' + 1

solve :: [Set Char] -> Int
solve input = sum
  $ priority . S.findMin . foldl1 S.intersection
    <$> groupsOf 3 input

main :: IO ()
main = print . solve . parse =<< readFile "input"
