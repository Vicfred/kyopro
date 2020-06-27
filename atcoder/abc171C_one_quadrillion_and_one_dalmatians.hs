-- frederick99
-- https://atcoder.jp/contests/abc171/tasks/abc171_c
-- math

import Data.Char (chr)
 
solve :: Int -> Int -> (Int, String)
solve p n = (q, chr (97 + r) : s)
  where
    (m, s) = if n > p
               then solve (p * 26) (n - p)
               else (n - 1, "")
    (q, r) = m `divMod` 26
 
main :: IO ()
main = getLine >>= putStrLn . snd . solve 26 . read

