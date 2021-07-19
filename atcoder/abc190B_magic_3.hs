-- user: nel_tu_
-- path: https://atcoder.jp/contests/abc190/tasks/abc190_b
-- tags: implementation

import Data.Bool ( bool )

solve ([_, s, d] : spells) = any effective spells
    where effective [x, y] = x < s && y > d

input :: String -> [[Int]]
input = map (map read . words) . lines

main = interact $ bool "No" "Yes" . solve . input

