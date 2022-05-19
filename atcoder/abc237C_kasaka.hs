-- uninhm
-- https://atcoder.jp/contests/abc237/tasks/abc237_c
-- implementation

import Data.List (dropWhileEnd)

isPalindrome :: String -> Bool
isPalindrome xs = xs == reverse xs

strip :: Char -> String -> String
strip c = dropWhileEnd (== c)

solve :: String -> String
solve s
  | lendiff < length (takeWhile (== 'a') s) = "No"
  | isPalindrome $ dropWhile (== 'a') s'  = "Yes"
  | otherwise = "No"
    where s' = strip 'a' s
          lendiff = length s - length s'

main :: IO ()
main = getLine >>= putStrLn . solve
