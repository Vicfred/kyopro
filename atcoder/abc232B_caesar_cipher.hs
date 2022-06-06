-- uninhm
-- https://atcoder.jp/contests/abc232/tasks/abc232_b
-- implementation

import Data.Bool (bool)
import Data.Char (ord)

solve :: String -> String -> Bool
solve s t = diffs s == diffs t
  where
    diff a b
      | a <= b = ord b - ord a
      | otherwise = ord 'z' - ord a + ord b - ord 'a' + 1
    diffs [] = []
    diffs [_] = []
    diffs (x:y:xs) = diff x y : diffs (y:xs)

main :: IO ()
main = solve <$> getLine <*> getLine >>= putStrLn . bool "No" "Yes"
