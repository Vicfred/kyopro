-- uninhm
-- https://atcoder.jp/contests/abc237/tasks/abc237_b
-- implementation

import Data.List (transpose)
import Control.Monad (replicateM)

main :: IO ()
main = do
  [h, w] <- map read . words <$> getLine
  a <- map words <$> replicateM h getLine
  let b = transpose a
  putStr $ unlines $ map unwords b
