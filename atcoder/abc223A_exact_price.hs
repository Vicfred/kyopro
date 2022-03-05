-- uninhm
-- https://atcoder.jp/contests/abc223/tasks/abc223_a
-- implementation

import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn . solve . read

solve :: Int -> String
solve 0 = "No"
solve x = bool "No" "Yes" $ x `mod` 100 == 0
