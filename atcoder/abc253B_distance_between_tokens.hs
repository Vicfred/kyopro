-- uninhm
-- https://atcoder.jp/contests/abc253/tasks/abc253_b
-- implementation

{-# LANGUAGE TupleSections #-}
import Control.Monad (replicateM)
import Data.List (elemIndices)
import Data.Maybe (isJust, fromJust)
import Data.Bifunctor (first)

getInts :: IO [Int]
getInts = map read . words <$> getLine

distance :: [(Int, Int)] -> Int
distance [(x1, y1), (x2, y2)] = abs (x1 - x2) + abs (y1 - y2)
distance _ = error "distance: invalid input"

main :: IO ()
main = do
  [h, w] <- getInts
  s <- replicateM h getLine
  print
    $ distance
    $ concatMap (\(xs, y) -> map (, y) xs)
    $ flip zip [0..]
    $ map (elemIndices 'o') s
