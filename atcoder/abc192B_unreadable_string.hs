-- uninhm
-- https://atcoder.jp/contests/abc192/tasks/abc192_b
-- implementation

import Data.Char (toLower, toUpper)
import Data.Bool (bool)

evens :: [a] -> [a]
evens [] = []
evens (x:xs) = odds xs

odds :: [a] -> [a]
odds [] = []
odds (x:xs) = x : evens xs

isHardToRead :: String -> Bool
isHardToRead s =
  map toLower os == os &&
  map toUpper es == es
    where os = odds s
          es = evens s

main :: IO ()
main = getLine >>= putStrLn
  . bool "No" "Yes"
  . isHardToRead
