-- uninhm
-- https://adventofcode.com/2022/day/4
-- implementation

{-# LANGUAGE OverloadedStrings #-}

import qualified Data.Text as T

data Range a = Range
  { start :: a
  , end :: a
  } deriving (Show, Eq)

fromList :: [a] -> Range a
fromList [s, e] = Range s e

contains :: Ord a => Range a -> Range a -> Bool
contains other range =
  start range <= start other && end other <= end range

parse :: String -> [[Range Int]]
parse = map parseLine . T.lines . T.pack
  where
    parseLine line =
      fromList . map (read . T.unpack) . T.splitOn "-" <$> T.splitOn "," line

solve :: [[Range Int]] -> Int
solve = length . filter id . map checkContaining
  where checkContaining [a, b] = contains a b || contains b a

main :: IO ()
main = print . solve . parse =<< readFile "input"
