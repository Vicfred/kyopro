-- uninhm
-- https://atcoder.jp/contests/abc146/tasks/abc146_b
-- implementation

import Data.Char

solve n c =
  chr $ ( (ord c) + n - 65 ) `mod` 26 + 65

main = do
  li <- getLine
  let n = read li
  s <- getLine
  putStrLn $ map (solve n) s

