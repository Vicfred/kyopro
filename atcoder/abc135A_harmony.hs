-- unihernandez22
-- https://atcoder.jp/contests/abc135/tasks/abc135_a
-- basic math

main = do
  li <- getLine
  let a:b:[] = map read $ words li
  putStrLn $
    if (a + b) `mod` 2 == 0 then
      show $ div (a + b) 2
    else
      "IMPOSSIBLE"
