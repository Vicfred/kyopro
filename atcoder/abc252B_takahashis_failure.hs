-- uninhm
-- https://atcoder.jp/contests/abc252/tasks/abc252_b
-- implementation

import Data.Bool (bool)
import Data.List (elemIndices)
import qualified Data.Set as Set

getInts :: IO [Int]
getInts = map read . words <$> getLine

input :: IO (Int, Int, [Int], [Int])
input = do
  [n, k] <- getInts
  a <- getInts
  b <- getInts
  return (n, k, a, b)

solve :: (Int, Int, [Int], [Int]) -> Bool
solve (n, k, a, b) = not $ null $ greatestSet `Set.intersection` dislikeSet
  where
    greatestSet = Set.fromAscList $ map (+1) $ elemIndices (maximum a) a
    dislikeSet = Set.fromList b

main :: IO ()
main = input >>= putStrLn . bool "No" "Yes" . solve
