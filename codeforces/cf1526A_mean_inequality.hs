-- uninhm
-- https://codeforces.com/contest/1526/problem/A
-- greedy

import Data.List (transpose, sort)

odds (x:xs) = x : evens xs
odds [] = []

evens (_:xs) = odds xs
evens [] = []

split a = [take l a, drop l a]
  where l = length a `div` 2

solve :: [Int] -> [Int]
solve = concat . transpose . split . sort

solveLine =
  unwords . map show . solve . map read . words

main = interact $ unlines . map solveLine . evens . tail . lines
