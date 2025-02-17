-- Vicfred
-- https://atcoder.jp/contests/abc393/tasks/abc393_a
-- implementation

import System.IO
import Data.List

countABCTriplets :: String -> Int
countABCTriplets s = length [ () | (i, a) <- indexed, (j, b) <- indexed, (k, c) <- indexed,
                                   i < j, j < k, j - i == k - j, a == 'A', b == 'B', c == 'C']
  where
    indexed = zip [0..] s

main :: IO ()
main = do
    -- Read input string
    s <- getLine
    print (countABCTriplets (filter (/= ' ') s))
