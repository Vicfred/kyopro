-- uninhm
-- https://atcoder.jp/contests/abc137/tasks/abc137_a
-- implementation

main = do
  li <- getLine
  let a:b:[] = map read $ words li
  print $
    max (a + b) $ max (a - b) (a * b)
