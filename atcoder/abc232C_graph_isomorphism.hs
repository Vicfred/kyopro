-- uninhm
-- https://atcoder.jp/contests/abc232/tasks/abc232_c
-- brute force

import Data.Bool (bool)
import Data.List (permutations, sort)
import Control.Monad (replicateM)

getInts = map read . words <$> getLine

replace perm = map $ (perm!!) . subtract 1

test a b perm = a == b'
  where b' = sort $ map (sort . replace perm) b

main = do
  [n, m] <- getInts
  a <- sort . map sort <$> replicateM m getInts
  b <- replicateM m getInts
  putStrLn $ bool "No" "Yes" $ any (test a b) $ permutations [1..n]
