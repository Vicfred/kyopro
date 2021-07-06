-- uninhm
-- https://atcoder.jp/contests/abc177/tasks/abc177_a
-- basic math

import Data.Bool (bool)

solve [d, t, s] = bool "No" "Yes" $ t*s >= d

main = interact $ solve . map read . words
