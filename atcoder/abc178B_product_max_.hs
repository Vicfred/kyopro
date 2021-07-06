-- uninhm
-- https://atcoder.jp/contests/abc178/tasks/abc178_b
-- math

import Data.Bits

bignum :: Int
bignum = shiftL 1 63

solve :: [Int] -> Int
solve [a, b, c, d] = foldl max (-bignum) [a * c, a * d, b * c, b * d]

main = interact $ show . solve . map read . words
