-- uninhm
-- https://adventofcode.com/2022/day/4#part2
-- implementation

{-# LANGUAGE OverloadedStrings #-}

import qualified Data.Text as T

data Range a = Range
  { start :: a
  , end :: a
  } deriving (Show, Eq)

fromList :: [a] -> Range a
fromList [s, e] = Range s e

overlapsWith :: Ord a => Range a -> Range a -> Bool
overlapsWith other range
  | start range > start other = overlapsWith range other
  | otherwise = end range >= start other

parse :: String -> [[Range Int]]
parse = map parseLine . T.lines . T.pack
  where
    parseLine line =
      fromList . map (read . T.unpack) . T.splitOn "-" <$> T.splitOn "," line

solve :: [[Range Int]] -> Int
solve = length . filter id . map checkOverlaping
  where checkOverlaping [a, b] = overlapsWith a b

main :: IO ()
main = print . solve . parse =<< readFile "input"
