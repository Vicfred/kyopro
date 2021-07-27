-- uninhm
-- https://atcoder.jp/contests/abc211/tasks/abc211_b
-- implementation

import Data.List (sort)
import Data.Bool (bool)

isSet :: Ord a => [a] -> Bool
isSet = check . sort
  where
    check [] = True
    check [_] = True
    check (x:y:xs) = x /= y && check (y:xs)

main = interact $ bool "No" "Yes" . isSet . lines

