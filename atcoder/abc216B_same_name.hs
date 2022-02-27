-- uninhm
-- https://atcoder.jp/contests/abc216/tasks/abc216_b
-- implementation

import Control.Monad (replicateM)
import Data.Bool (bool)
import Data.Set (fromList)

areAllUnique :: Ord a => [a] -> Bool
areAllUnique xs = length xs == length (fromList xs)

main :: IO ()
main = do
  n <- readLn
  putStrLn . bool "Yes" "No" . areAllUnique =<< replicateM n getLine
