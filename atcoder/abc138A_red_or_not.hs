-- uninhm
-- https://atcoder.jp/contests/abc138/tasks/abc138_a
-- implementation

main = do
  li <- getLine
  let a = read li
  li <- getLine
  putStrLn $
    if a < 3200 then
      "red"
    else
      li
