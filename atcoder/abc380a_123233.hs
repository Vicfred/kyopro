-- vicfred
-- https://atcoder.jp/contests/abc380/tasks/abc380_a
-- implementation
import Data.Bool
import Data.List

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . (== "122333") . sort
