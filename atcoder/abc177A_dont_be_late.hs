-- uninhm
-- https://atcoder.jp/contests/abc177/tasks/abc177_a
-- basic math

main = do
  li <- getLine
  let d:t:s:[] = map read $ words li
  putStrLn $ if t*s >= d then "Yes" else "No"
