-- uninhm
-- https://codeforces.com/contest/1535/problem/B
-- greedy

import Control.Monad (replicateM_)
import Data.List (tails)

solve a = length [ True | (x:rest) <- tails a, y <- rest, gcd x (2*y) > 1 ]

main = do
  t <- read <$> getLine
  replicateM_ t $ do
    n <- getLine
    a <- map read . words <$> getLine
    print $ solve $ filter even a ++ filter odd a
