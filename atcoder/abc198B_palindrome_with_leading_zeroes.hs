-- uninhm
-- https://atcoder.jp/contests/abc198/tasks/abc198_a
-- implementation

import Data.Bool (bool)

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs

main :: IO ()
main = getLine >>= putStrLn
  . bool "No" "Yes"
  . isPalindrome
  . dropWhile (== '0')
  . reverse
