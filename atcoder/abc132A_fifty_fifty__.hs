-- uninhm
-- https://atcoder.jp/contests/abc132/tasks/abc132_a
-- greedy

import Data.Set (fromList, size)
import Data.Bool (bool)

solve = bool "No" "Yes" . (==) 2 . size . fromList . init

main = interact solve

