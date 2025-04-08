-- vicfred
-- https://atcoder.jp/contests/abc377/tasks/abc377_a
-- implementation
import Data.Bool
import Data.List

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes"  . (== "ABC") . sort
