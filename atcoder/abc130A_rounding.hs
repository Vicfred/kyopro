-- uninhm
-- https://atcoder.jp/contests/abc130/tasks/abc130_a
-- implementation

main = do
  li <- getLine
  let x:a:[] = (map read $ words li) :: [Int]
  print $ if x < a then 0 else 10
