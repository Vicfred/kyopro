-- user: nel_tu_
-- path: https://codeforces.com/contest/1526/problem/B
-- tags: math

import Data.Bool ( bool )

solve :: Int -> Bool
solve n = or [(n - k) `mod` 11 == 0 | k <- [0, 111 .. 1110], k <= n]

main = interact $ unlines . map (bool "NO" "YES" . solve . read) . tail . lines

