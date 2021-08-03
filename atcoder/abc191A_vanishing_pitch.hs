-- uninhm
-- https://atcoder.jp/contests/abc191/tasks/abc191_a
-- basic math

import Data.Bool (bool)

(.>) = flip (.)
infixl 8 .>

main = interact $ words .> map read .> \[v, t, s, d] ->
  bool "No" "Yes" $ d < v*t || v*s < d
