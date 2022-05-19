-- uninhm
-- https://atcoder.jp/contests/abc236/tasks/abc236_b
-- implementation

import Data.Map (Map)
import qualified Data.Map as Map

count :: Ord a => [a] -> Map a Int
count xs = go Map.empty xs
  where
    go m [] = m
    go m (x:xs) = go (Map.insertWith (+) x 1 m) xs

solve :: [String] -> String
solve = head . Map.keys . Map.filter (== 3) . count

main :: IO ()
main = getLine >> getLine >>= putStrLn . solve . words
