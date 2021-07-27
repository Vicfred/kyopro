-- user: nel_tu_
-- path: https://atcoder.jp/contests/abc190/tasks/abc190_a
-- tags: implementation

import Data.Bool ( bool )

solve [a, b, c] = bool "Aoki" "Takahashi" $ a - b + c > 0

main = interact $ solve . map read . words

