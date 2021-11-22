-- uninhm
-- https://codeforces.com/contest/1536/problem/A
-- greedy

import Control.Monad (replicateM_)

getInt = read <$> getLine
getInts = map read . words <$> getLine

solution = unlines [ "YES"
                   , "101"
                   , unwords (map show [0..100])
                   ]

main = do
  t <- getInt
  replicateM_ t $ do
    n <- getInt
    a <- getInts
    if any (< 0) a then
      putStrLn "NO"
    else
      putStr solution
