-- uninhm
-- https://atcoder.jp/contests/abc125/tasks/abc125_b
-- greedy

solve n v c ans
  | n == 0 = ans
  | x > y =
    solve (n-1) (tail v) (tail c) (ans+x-y)
  | otherwise =
    solve (n-1) (tail v) (tail c) ans
      where x = head v
            y = head c

main = do
  li <- getLine
  let n = read li
  li <- getLine
  let v = map read $ words li
  li <- getLine
  let c = map read $ words li
  
  print $ solve n v c 0
