-- uninhm
-- https://atcoder.jp/contests/abc143/tasks/abc143_a
-- basic math

main = do
  li <- getLine
  let a:b:[] = map read $ words li
  putStrLn.show $
    max 0 $ a - 2 * b
