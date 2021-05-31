-- uninhm
-- https://atcoder.jp/contests/abc133/tasks/abc133_a
-- basic math

main = do
  li <- getLine
  let n:a:b:[] = map read $ words li
  print $ min (n * a) b
