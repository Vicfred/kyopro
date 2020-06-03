--- frederick99, 6/2020
--- https://codeforces.com/contest/1360/problem/A
--- math, geometry

import Control.Monad ( replicateM_ )


minSquare :: [Int] -> Int
minSquare [w, h] = max a (2*b) ^ 2
    where a = max w h
          b = min w h


readInput :: IO [Int]
readInput = map read . words <$> getLine

main :: IO ()
main = do
    x <- read <$> getLine
    replicateM_ x (minSquare <$> readInput >>= print)
