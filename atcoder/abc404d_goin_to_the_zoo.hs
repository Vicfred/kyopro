-- uninhm
-- https://atcoder.jp/contests/abc404/tasks/abc404_d
-- brute force

import Data.Array.IArray
import Control.Monad (forM)

maxVisits = 2

combinations :: Int -> [[Int]]
combinations 0 = [[]]
combinations n =
  concat [ map (i:) $ combinations (n-1) | i <- [0..maxVisits] ]

getInts :: IO [Int]
getInts = map read . words <$> getLine

isValid :: Int -> Array Int [Int] -> [Int] -> Bool
isValid m zoos comb =
  all (>= maxVisits) arr
  where
    f idx coef = map (,coef) (zoos ! idx)
    arr = accumArray (+) 0 (1, m) $ concat $ zipWith f [1..] comb :: Array Int Int

calcCost :: Array Int Int -> [Int] -> Int
calcCost cost = sum . zipWith f [1..] where
  f idx coef = (cost!idx) * coef

main :: IO ()
main = do
  [n, m] <- getInts
  cost <- listArray (1, n) <$> getInts :: IO (Array Int Int)
  zoos <- accumArray (flip (:)) [] (1,n) . concat <$> forM [1..m] (\i -> do
    (k:a) <- getInts
    return $ map (,i) a
    ) :: IO (Array Int [Int])
  print . minimum
        . map (calcCost cost)
        . filter (isValid m zoos)
        $ combinations n
