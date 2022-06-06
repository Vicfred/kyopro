-- uninhm
-- https://atcoder.jp/contests/abc252/tasks/abc252_c
-- greedy, semi-brute force

import Control.Monad (replicateM)
import Data.Map (Map)
import qualified Data.Map as Map
import Data.List (elemIndex)

count :: Ord a => [a] -> Map a Int
count xs = go Map.empty xs
  where
    go m [] = m
    go m (x:xs) = go (Map.insertWith (+) x 1 m) xs

addSpins :: Map Int Int -> Int
addSpins = maximum . Map.mapWithKey f
  where
    f k v = k + (v-1)*10

assertJust :: Maybe a -> a
assertJust Nothing = error "assertJust"
assertJust (Just x) = x

timeNeeded :: Char -> [String] -> Int
timeNeeded x = addSpins . count . map (assertJust . elemIndex x)

main :: IO ()
main = do
  n <- readLn
  s <- replicateM n getLine

  print $ minimum $ map (($ s) . timeNeeded) ['0'..'9']
