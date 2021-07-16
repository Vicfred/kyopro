-- uninhm
-- https://atcoder.jp/contests/abc197/tasks/abc197_b
-- implementation, recursion

solution p s = go p 0 0 s where
  go p c i s
    | i == length s = c
    | s !! i == '.' = go p (c+1) (i+1) s
    | i > p         = c
    | otherwise     = go p 0 (i+1) s

main' [_, _, y', x'] ls =
  solution x (ls !! y) + solution y (map (!!x) ls) - 1
    where x = x' - 1
          y = y' - 1

main = interact $ show . (\(l:ls) -> main' (map read $ words l) ls) . lines
