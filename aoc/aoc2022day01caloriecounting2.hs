-- uninhm
-- https://adventofcode.com/2022/day/1#part2
-- implementation

import Data.List (sortOn)

splitWhen :: (a -> Bool) -> [a] -> [[a]]
splitWhen _ [] = [[]]
splitWhen p (x:xs)
  | p x = [] : res
  | otherwise = (x : head res) : tail res
    where res = splitWhen p xs

solution :: String -> IO ()
solution input = print
  . sum
  . take 3
  . sortOn (0 -)
  . map (sum . map read)
  . splitWhen (== "")
  $ lines input

main :: IO ()
main = solution =<< readFile "input"
