-- frederick99, algorithm by vicfred
-- https://atcoder.jp/contests/abc171/tasks/abc171_c
-- math

import Data.Char ( chr )
 
solve :: Int -> String
solve 0 = ""
solve n = chr (97 + r) : solve q
  where (q, r) = pred n `divMod` 26

main :: IO ()
main = putStrLn =<< reverse . solve . read <$> getLine

