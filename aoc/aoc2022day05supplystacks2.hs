-- uninhm
-- https://adventofcode.com/2022/day/5#part2
-- implementation

import Data.List (splitAt)
import Data.Array

data Move = Move Int Int Int
type Stacks = Array Int [Char]
type Input = (Stacks, [Move])

groupsOf :: Int -> [a] -> [[a]]
groupsOf n [] = []
groupsOf n xs = a : groupsOf n b
  where (a, b) = splitAt n xs

makeStacks :: [String] -> [[Char]]
makeStacks [ln] = take ((length ln + 3) `div` 4) $ repeat []
makeStacks (ln:lns) = add lvl $ makeStacks lns
  where
    lvl = map (!! 1) $ groupsOf 4 ln
    add [] [] = []
    add (x:lvl) (s:stacks)
      | x /= ' ' = (x:s) : add lvl stacks
      | otherwise = s : add lvl stacks

parseMove :: String -> Move
parseMove s = case words s of
  [move, n, from, a, to, b] -> Move (read n) (read a) (read b)
  _ -> error "Invalid move"

parse :: String -> Input
parse input = (listArray (1, length stacks) stacks, moves)
  where
    stacks = makeStacks $ takeWhile (/= "") $ lines input
    moves = map parseMove $ tail $ dropWhile (/= "") $ lines input

makeMove :: Move -> Stacks -> Stacks
makeMove (Move n from to) stacks =
  stacks // [ (to, movingElems ++ stacks ! to)
            , (from, drop n (stacks ! from))
            ]
    where movingElems = take n (stacks ! from)

solve :: Input -> String
solve = map head . elems . go where
  go (stacks, []) = stacks
  go (stacks, (mv:moves)) = go (makeMove mv stacks, moves)

main :: IO ()
main = putStrLn . solve . parse =<< readFile "input"
