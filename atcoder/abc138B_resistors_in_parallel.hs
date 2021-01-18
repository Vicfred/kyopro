-- uninhm
-- https://atcoder.jp/contests/abc138/tasks/abc138_b
-- implementation

main = do
  li <- getLine
  li <- getLine
  let a = map (\x -> (1/) $ read x) $ words li
  print $ (1/) $ sum a

