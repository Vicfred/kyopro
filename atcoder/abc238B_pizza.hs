-- uninhm
-- https://atcoder.jp/contests/abc238/tasks/abc238_b
-- implementation

import Data.Set (Set)
import qualified Data.Set as S

solve :: Set Int -> Int -> [Int] -> Int
solve s _ [] = go 0 (S.toList s)
  where
    go a [_] = a
    go a (x:y:xs)
      | y-x > a = go (y-x) (y:xs)
      | otherwise = go a (y:xs)

solve s cum (x:xs) = solve (S.insert cum' s) cum' xs
  where cum' = (cum + x) `mod` 360

main :: IO ()
main = getLine >> getLine >>= print
  . solve (S.fromAscList [0, 360]) 0
  . map read . words

