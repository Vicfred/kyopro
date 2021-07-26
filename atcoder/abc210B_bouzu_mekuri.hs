-- uninhm
-- https://atcoder.jp/contests/abc210/tasks/abc210_b
-- implementation

import Data.Bool (bool)

(.>) = flip (.)
infixr 8 .>

main = interact $ lines
  .> last
  .> zip (cycle [1, 0])
  .> filter ((=='1') . snd)
  .> fst . head
  .> bool "Takahashi" "Aoki" . (== 0)
