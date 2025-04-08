-- vicfred
-- https://atcoder.jp/contests/abc374/tasks/abc374_a
-- implementation
import Data.Bool

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes". (== "san") . reverse . take 3 . reverse
