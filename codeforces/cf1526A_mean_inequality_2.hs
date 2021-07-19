-- user: nel_tu_
-- path: https://codeforces.com/contest/1526/problem/A
-- tags: implementation, observation

{-# LANGUAGE ViewPatterns #-}
 
import Data.List ( sort )
import Control.Monad ( replicateM_ )
 
solve :: Int -> [Int] -> [Int]
solve n (sort -> nums)
    = take n nums `zip` drop n nums >>= \(a, b) -> [a, b]
 
getInt = read <$> getLine
getInts = map read . words <$> getLine 
putInts = putStrLn . unwords . map show
 
main = do n <- getInt
          replicateM_ n (solve <$> getInt <*> getInts >>= putInts)

