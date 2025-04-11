-- vicfred
-- https://atcoder.jp/contests/abc358/tasks/abc358_a
-- implementation
import Data.Bool (bool)

main :: IO ()
main = getLine >>= putStrLn . bool "No" "Yes" . (== "AtCoder Land")
