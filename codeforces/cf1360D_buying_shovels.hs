--- frederick99, 6/2020
--- https://codeforces.com/contest/1360/problem/D

import Control.Monad ( replicateM_ )


buyingShovels :: [Int] -> Int
buyingShovels [n, k] = head (cands1 ++ cands2) where
    upper = ceiling . sqrt . fromIntegral $ n
    increasing = [1 .. upper]
    decreasing = [upper, upper-1 .. 1]
    cands1 = [x | x <- increasing, n `div` x <= k, n `mod` x == 0]
    cands2 = [n `div` x | x <- decreasing, x <= k, n `mod` x == 0]


readInput :: IO [Int]
readInput = map read . words <$> getLine

main :: IO ()
main = do
    t <- read <$> getLine
    replicateM_ t (buyingShovels <$> readInput >>= print)
