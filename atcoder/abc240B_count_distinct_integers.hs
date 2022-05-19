-- uninhm
-- https://atcoder.jp/contests/abc240/tasks/abc240_b
-- implementation

import Data.Set (Set)
import qualified Data.Set as S

solve :: [Int] -> Int
solve = S.size . S.fromList

main :: IO ()
main = getLine >> getLine >>= print . solve . map read . words
